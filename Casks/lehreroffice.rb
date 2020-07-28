cask "lehreroffice" do
  version "2020.6.0"
  sha256 "9f67112f7f591db9591f2be18409bbafcf0015d129ea6520f24b019b2ec4af26"

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  appcast "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  app "LehrerOffice.app"
end
