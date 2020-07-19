function guessNumberOfFiles(){
numFile=$(ls -l |grep "^-" |wc -l)

while true;
do
	echo "Please enter a number: "
read guess
if [ $guess -lt $numFile ]
then
	echo "Your guess is less than the real number, try a slightly higher number."
elif [ $number -gt $numFile ]
then
	echo "Your guess is higher than the real number, try a lower number."
else
	echo "Bravo! Your guess is Corect!"
break;
fi
done

}
echo "Guess the number of files in the curent directoy"
guessNumberOfFiles
