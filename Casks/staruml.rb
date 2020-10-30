cask "staruml" do
  version "4.0.0"
  sha256 "59cec6d0ae22e0290b52f2f5bf32640aea07d9195aa6c3851b627f5c98bb83cb"

  url "https://staruml.io/download/releases-v#{version.major}/StarUML-#{version}.dmg"
  appcast "https://staruml.io/"
  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  app "StarUML.app"
end
