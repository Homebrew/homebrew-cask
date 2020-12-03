cask "lehreroffice" do
  version "2020.10.0"
  sha256 "f732e3c1a0d1484bc6d7db12fcbce7753b11e2a8efbf3c7571f88b6c7164e87c"

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  appcast "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  app "LehrerOffice.app"
end
