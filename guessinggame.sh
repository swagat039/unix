#!/usr/bin/env bash

echo "Guess the number of files in the current directory:"

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess:"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is lower than the number of files!!"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is higher than the number of files!!"
        else
            echo "Congratulation, your guess is correct!!"
        break;
        fi
    done
}
guess
