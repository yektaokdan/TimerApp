//
//  ViewController.swift
//  TimerApp
//
//  Created by pc on 18.02.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var stepperValueLabel: UILabel!
    var timer = Timer()
    var counter = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    
    @IBAction func clickedButton(_ sender: Any) {
        counter = Double(stepperValueLabel.text!)!
        myLabel.text="TIME: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        stepperValueLabel.text = ""
            
        }
    

        
    @IBAction func stepperClicks(_ sender: UIStepper) {
        stepperValueLabel.text = String(sender.value)
    }
    
    
    @objc func timerFunction(){
        myLabel.text="TIME: \(counter)"
        counter -= 1
        if counter == 0{
            myLabel.text = "TIME'S OVER."
            timer.invalidate()
        }
    }
    }
    
    
    



