cask "scre" do
  version "0.1"
  sha256 "15e060e3ff3cb35d5d2f845e453b08452d595c6d2f28971aacfd702771642afa"

  url "https://github.com/hotchemi/Scre/releases/download/#{version}/Scre.zip"
  name "Scre"
  desc "A lightweight screen recorder macOS application written in SwiftUI."
  homepage "https://github.com/hotchemi/Scre/"

  app "Scre.app"
end
