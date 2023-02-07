cask "lehreroffice" do
  version "2022.10.3"
  sha256 :no_check

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  name "LehrerOffice"
  homepage "https://www.lehreroffice.ch/"

  livecheck do
    url "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
    regex(/(\d+(?:\.\d+)*)/)
  end

  app "LehrerOffice.app"
end
