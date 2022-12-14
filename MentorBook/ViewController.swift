//
//  ViewController.swift
//  MentorBook
//
//  Created by Yui Ogawa on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    // 表示するメンターの番号
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS, WebD"))
        
        setUI()
    }
    
    // ラベルや画像の設定
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        if index == 0 {
            index = 2
        } else {
            index = index - 1
        }
        setUI()
    }
    @IBAction func tugi(){
        if index == 2 {
            index = 0
        } else {
            index = index + 1
        }
        setUI()
    }

}

