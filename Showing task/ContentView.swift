//
//  ContentView.swift
//  Showing task
//
//  Created by sudeepa pal on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var newText = ""
        @State private var enteredTexts: [String] = []

        var body: some View {
            VStack {
                TextField("Enter Text", text: $newText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: {
                    self.enteredTexts.append(self.newText)
                    self.newText = ""
                }) {
                    Text("Submit")
                }

                ForEach(enteredTexts, id: \.self){ id in
                    VStack {
                        Text(id)
                    }
                }//id in loop
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
