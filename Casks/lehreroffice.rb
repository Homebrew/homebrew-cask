cask "lehreroffice" do
  version "2020.9.0"
  sha256 "b59d8cf6bd9263bff612b31c4fcb5624342a3f463954d515b41a6f3746d0bf52"

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  appcast "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  app "LehrerOffice.app"
end
