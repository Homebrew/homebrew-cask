cask "lehreroffice" do
  version "2020.8.0"
  sha256 "135da42e80e0ad9f7ee0764ad77c1e83feeb98548ceda172009da545bf3a2c31"

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  appcast "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  app "LehrerOffice.app"
end
