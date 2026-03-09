#!/bin/bash
initialiser_base(){
	if [ -f "tasks.txt" ]; then
		echo "La base existe deja."
	else 
		touch tasks.txt
		echo "La base a ete cree avec succes"
	fi
}

afficher_toutes_taches(){
	if [ -f "tasks.txt" ]; then
		cat tasks.txt
	else 
		echo "Erreur: base non initialiser."
	fi
}

sauvegarder_base(){
	if [ -f "tasks.txt" ]; then
		cp tasks.txt tasks_backup.txt
		echo "Sauvegarde creer: tasks_backup.txt"
	else 
		echo "La base n'existe pas,rien a ete sauvegarder"
	fi
}

restaurer_base(){
	if [ -f "tasks.txt" ]; then 
		cp tasks_backup tasks.txt 
		echo "Base restaurer depuis la sauvegarde tasks_backup.txt"
	else 
		echo "Aucun sauvegarde disposinible"
	fi
}
