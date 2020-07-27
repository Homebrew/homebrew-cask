cask "staruml" do
  version "3.2.2"
  sha256 "03c3226c643ecc11385a5bb4e3f853921ede862433a351a665fb86416d75f53f"

  url "http://staruml.io/download/releases/StarUML-#{version}.dmg"
  appcast "http://staruml.io/"
  name "StarUML"
  homepage "http://staruml.io/"

  app "StarUML.app"
end
