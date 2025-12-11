cask "lehreroffice" do
  version "2025.5"
  sha256 :no_check

  url "https://www.cmi-bildung.ch/lo/dateien/easy/lo_desktop_macos.dmg"
  name "LehrerOffice"
  desc "Education software"
  homepage "https://www.cmi-bildung.ch/"

  livecheck do
    url "https://www.cmi-bildung.ch/lo/dateien/easy/lo_version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "LehrerOffice.app"

  zap delete: "/Library/Application Support/LehrerOffice",
      trash:  [
        "~/Documents/LehrerOffice",
        "~/Library/Saved Application State/ch.rothsoft.lehreroffice.desktop.savedState",
      ]

  caveats do
    requires_rosetta
  end
end
