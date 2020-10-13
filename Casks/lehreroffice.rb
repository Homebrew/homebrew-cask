cask "lehreroffice" do
  version "2020.7.2"
  sha256 "ae7de0f6c7b03a925a3a24472ae0ce8f6f71beb9c39b2a18cd90742d5f7d9ad8"

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  appcast "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  app "LehrerOffice.app"
end
