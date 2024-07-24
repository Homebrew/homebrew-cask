cask "deeper" do
  sha256 :no_check

  on_el_capitan do
    version "2.1.4"

    url "https://www.titanium-software.fr/download/1011/Deeper.dmg"
  end
  on_sierra do
    version "2.2.3"

    url "https://www.titanium-software.fr/download/1012/Deeper.dmg"
  end
  on_high_sierra do
    version "2.3.3"

    url "https://www.titanium-software.fr/download/1013/Deeper.dmg"
  end
  on_mojave do
    version "2.4.8"

    url "https://www.titanium-software.fr/download/1014/Deeper.dmg"
  end
  on_catalina do
    version "2.6.0"

    url "https://www.titanium-software.fr/download/1015/Deeper.dmg"
  end
  on_big_sur do
    version "2.7.1"

    url "https://www.titanium-software.fr/download/11/Deeper.dmg"
  end
  on_monterey do
    version "2.8.0"

    url "https://www.titanium-software.fr/download/12/Deeper.dmg"
  end
  on_ventura do
    version "2.9.2"

    url "https://www.titanium-software.fr/download/13/Deeper.dmg"
  end
  on_sonoma :or_newer do
    version "3.0.8"

    url "https://www.titanium-software.fr/download/14/Deeper.dmg"
  end

  name "Deeper"
  desc "Tool to enable and disable hidden functions of Finder and other apps"
  homepage "https://www.titanium-software.fr/en/deeper.html"

  livecheck do
    url :homepage
    regex(/>\s*Deeper\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
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

  app "Deeper.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Deeper Help*",
    "~/Library/Logs/Deeper.log",
    "~/Library/Preferences/com.titanium.Deeper.plist",
    "~/Library/Saved Application State/com.titanium.Deeper.savedState",
  ]
end
