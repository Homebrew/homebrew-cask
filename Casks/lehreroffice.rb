cask "lehreroffice" do
  version "2020.7.1"
  sha256 "f6e53b085462da280d0ff636525259b447494cdcfc482b31834cba1ae7dc9edf"

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  appcast "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  app "LehrerOffice.app"
end
