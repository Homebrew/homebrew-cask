cask "doxie" do
  version "2.12.2"
  sha256 "6f48066eca465fc17838ed9552eb5421472dcdc40757ee484014d6d9e256446b"

  url "https://download.getdoxie.com/Doxie-#{version}.dmg"
  appcast "https://r.getdoxie.com/app/sparkle/doxie-macos.xml"
  name "Doxie"
  homepage "https://www.getdoxie.com/"

  app "Doxie.app"
end
