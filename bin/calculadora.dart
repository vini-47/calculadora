import 'dart:io';

void main() {
    double num1 = 0;
    double num2 = 0;
    String operacao = "";
    String? entrada = "";

    List <String> operacoes = <String> ["+", "-", "*", "/"];

void soma(){
    print(num1 + num2);
}

void multiplicacao(){
    print(num1*num2);
}

void divisao(){
    print(num1/num2);
}

void subtracao(){
    print(num1 - num2);
}

void calcular() {
    switch (operacao) {
      case "+":
        soma();

      case "-":
        subtracao();

      case "*":
        multiplicacao();

      case "/":
        divisao();
        break;
    }
  }

  void getOperacao(){
 print("Digite a operação ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if(entrada != null){
        if(operacoes.contains(entrada)){
            operacao = entrada!;
        } else{
            print("Operação inválida!");
            getOperacao();
        }
    }
}

print("Digite o primeiro valor");

entrada = stdin.readLineSync();

if(entrada != null){
    if(entrada != ""){
        num1 = double.parse(entrada!); 
    }
}

getOperacao();

print("Digite o segundo valor");

entrada = stdin.readLineSync();
if(entrada != null){
    if(entrada != ""){
        num2 = double.parse(entrada!);
    }
}

print("O resultado da operação é:");

calcular();

}

