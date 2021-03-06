//
//  ChansonCell.swift
//  Lecteur Youtube
//
//  Created by juan on 23/04/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {
    
    @IBOutlet weak var miniature: UIImageView!
    @IBOutlet weak var artisteEtTitreLabel: UILabel!
    
    var chanson: Chanson!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func creerCell(_ chanson: Chanson) {
        self.chanson = chanson
        
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes: [.font:UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        let secondeLigne = NSAttributedString(string: "\n" + self.chanson.artiste, attributes: [ .font: UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.darkGray])
        attributed.append(secondeLigne)
        artisteEtTitreLabel.attributedText = attributed
    }
}
