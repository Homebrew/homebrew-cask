cask "mountain" do
  version "1.6.6,54"
  sha256 :no_check

  url "https://appgineers.de/mountain/files/Mountain.zip"
  appcast "https://appgineers.de/mountain/files/mountaincast.xml"
  name "Mountain"
  homepage "https://appgineers.de/mountain/"

  app "Mountain.app"
end
