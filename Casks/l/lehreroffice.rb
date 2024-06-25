cask "lehreroffice" do
  version "2024.2.2"
  sha256 :no_check

  url "https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  name "LehrerOffice"
  desc "Education software"
  homepage "https://www.lehreroffice.ch/"

  livecheck do
    url "https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "LehrerOffice.app"

  zap delete: "/Library/Application Support/LehrerOffice",
      trash:  [
        "~/Documents/LehrerOffice",
        "~/Library/Saved Application State/ch.rothsoft.lehreroffice.desktop.savedState",
      ]
end
