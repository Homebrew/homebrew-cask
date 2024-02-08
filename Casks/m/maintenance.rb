cask "maintenance" do
  sha256 :no_check

  on_el_capitan do
    version "2.1.8"

    url "https://www.titanium-software.fr/download/1011/Maintenance.dmg"
  end
  on_sierra do
    version "2.3.0"

    url "https://www.titanium-software.fr/download/1012/Maintenance.dmg"
  end
  on_high_sierra do
    version "2.4.2"

    url "https://www.titanium-software.fr/download/1013/Maintenance.dmg"
  end
  on_mojave do
    version "2.5.6"

    url "https://www.titanium-software.fr/download/1014/Maintenance.dmg"
  end
  on_catalina do
    version "2.7.1"

    url "https://www.titanium-software.fr/download/1015/Maintenance.dmg"
  end
  on_big_sur do
    version "2.8.2"

    url "https://www.titanium-software.fr/download/11/Maintenance.dmg"
  end
  on_monterey do
    version "2.9.2"

    url "https://www.titanium-software.fr/download/12/Maintenance.dmg"
  end
  on_ventura do
    version "3.0.2"

    url "https://www.titanium-software.fr/download/13/Maintenance.dmg"
  end
  on_sonoma :or_newer do
    version "3.1.3"

    url "https://www.titanium-software.fr/download/14/Maintenance.dmg"
  end

  name "Maintenance"
  desc "Operating system maintenance and cleaning utility"
  homepage "https://www.titanium-software.fr/en/maintenance.html"

  livecheck do
    url :homepage
    regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  depends_on macos: [
    :el_capitan,
    :sierra,
    :high_sierra,
    :mojave,
    :catalina,
    :big_sur,
    :monterey,
    :ventura,
    :sonoma,
  ]

  app "Maintenance.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.titanium.Maintenance.help*3.0.1",
    "~/Library/Preferences/com.titanium.Maintenance.plist",
    "~/Library/Saved Application State/com.titanium.Maintenance.savedState",
  ]
end
