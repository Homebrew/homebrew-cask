cask "battery-guardian" do
  version "1.1.0"
  sha256 "cc66f558559e322a84f9815bf5fd13c86815c2dd698336820b9c115746bacc5a"

  url "https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian-#{version.no_dots}.dmg"
  appcast "https://version.dssw.co.uk/batteryguardian/standard"
  name "Battery Guardian"
  homepage "https://www.dssw.co.uk/batteryguardian/"

  app "Battery Guardian.app"
end
