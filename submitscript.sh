#!/bin/bash
# args are: folder to zip, course, assignment #
# add your ssh key to auth keys on school
# change username as needed
username=tsdedhar

zip -rj submission.zip $1
scp submission.zip $username@linux.student.cs.uwaterloo.ca:~/submission.zip
ssh $username@linux.student.cs.uwaterloo.ca "/u/cs246/pub/marmoset_submit $2 $3 ~/submission.zip && rm ~/submission.zip"
rm submission.zip
