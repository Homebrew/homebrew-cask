cask "lehreroffice" do
  version "2020.7.0"
  sha256 "c6f5cc988eee18fad8f0471f04b694a4f3228704d860d87883346ba84194a8ae"

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  appcast "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  app "LehrerOffice.app"
end
