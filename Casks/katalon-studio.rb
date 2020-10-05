cask "katalon-studio" do
  version "7.7.2"
  sha256 "7e36243c0dcd29c23f6be6e2b8d4eb38e96ff3b31fcd113223f7b9bc75f8feb5"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
