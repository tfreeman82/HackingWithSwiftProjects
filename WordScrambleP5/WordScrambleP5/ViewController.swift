//
//  ViewController.swift
//  WordScrambleP5
//
//  Created by Tristan Freeman on 7/23/18.
//  Copyright © 2018 Tristan Freeman. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UITableViewController {
var allWords = [String]()
var usedWords = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let startWordsPath = Bundle.main.path(forResource: "start", ofType: "txt") {
            if let startWords = try?
                String(contentsOfFile: startWordsPath) {
                allWords = startWords.components(separatedBy: "\n")
            }else{
                allWords = ["silkworm"]
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

