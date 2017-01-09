//
//  ViewController.swift
//  ClassesChallenge
//
//  Created by Conan O'Brien on 6/6/16.
//  Copyright (c) 2016 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var favoriteColorField: UITextField!
    
    @IBOutlet weak var myTextView: UITextView!
    
    var student = Student()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /***************************************************
         * Start Your Code Here For Stretch #1 - Part II
         ***************************************************/
        myTextView.text = "First Name: \(student.firstName)\n" +
            "Last Name: \(student.lastName)\n" +
            "ID: \(student.idNumber)\n" +
        "FavoriteColor: \(student.favoriteColor)\n"
        
        /***************************************************
         * End Your Code Here For Stretch #1 - Part II
         ***************************************************/
    }
    
    @IBAction func onCustomButtonPressed(_ sender: UIButton) {
        
        let first = firstNameField.text!
        let last = lastNameField.text!
        let id = Int(idField.text!)!
        let color = favoriteColorField.text!
        
        //Uncomment the lines below for Stretch #2
        student = Student(  First: first, Last: last, ID: id, Color: color)
        
        myTextView.text =   "First Name: \(student.firstName)\n" +
            "Last Name: \(student.lastName)\n" +
            "Id: \(student.idNumber)\n" +
        "Favorite Color: \(student.favoriteColor)\n"
        
        firstNameField.resignFirstResponder()
        lastNameField.resignFirstResponder()
        idField.resignFirstResponder()
        favoriteColorField.resignFirstResponder()
    }
    
    @IBAction func onHelloButtonPressed(_ sender: UIButton) {
        //Uncomment the line below for Stretch #3
        myTextView.text = student.sayHello()
    }
    
}

