cask "lehreroffice" do
  version "2023.6.0"
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

  zap trash:  [
        "~/Documents/LehrerOffice",
        "~/Library/Saved Application State/ch.rothsoft.lehreroffice.desktop.savedState",
      ],
      delete: "/Library/Application Support/LehrerOffice"
end
