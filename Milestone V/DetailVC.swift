//
//  DetailVC.swift
//  Milestone V
//
//  Created by Maks Vogtman on 09/12/2022.
//

import UIKit

class DetailVC: UIViewController {
    var country: Country?
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 15
        
        return stackView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemYellow
        label.font = UIFont(name: "Chalkduster", size: 26)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var capitalLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemYellow
        label.font = UIFont(name: "Chalkduster", size: 26)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var sizeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemYellow
        label.font = UIFont(name: "Chalkduster", size: 26)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var populationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemYellow
        label.font = UIFont(name: "Chalkduster", size: 26)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var currencyLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemYellow
        label.font = UIFont(name: "Chalkduster", size: 26)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var internetDomainLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemYellow
        label.font = UIFont(name: "Chalkduster", size: 26)
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(capitalLabel)
        stackView.addArrangedSubview(sizeLabel)
        stackView.addArrangedSubview(populationLabel)
        stackView.addArrangedSubview(currencyLabel)
        stackView.addArrangedSubview(internetDomainLabel)
        
        nameLabel.text = "Country name: \(country?.name ?? "Unknown")"
        capitalLabel.text = "Capital: \(country?.capital ?? "Unknown")"
        sizeLabel.text = "Size: \(country?.size ?? 0.0) km"
        populationLabel.text = "Population: \(country?.population ?? 0)"
        currencyLabel.text = "Currency: \(country?.currency ?? "Unknown")"
        internetDomainLabel.text = "Internet domain: \(country?.internetDomain ?? "Unknown")"
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -600),
            nameLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            capitalLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -500),
            capitalLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            capitalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            sizeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -400),
            sizeLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            sizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            populationLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -300),
            populationLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            populationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            currencyLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -200),
            currencyLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            currencyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            internetDomainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -100),
            internetDomainLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            internetDomainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
