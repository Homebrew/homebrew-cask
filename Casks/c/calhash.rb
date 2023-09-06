cask "calhash" do
  sha256 :no_check

  on_mojave :or_older do
    depends_on macos: ">= :catalina"
  end
  on_catalina do
    version "1.0.5"

    url "https://www.titanium-software.fr/download/1015/CalHash.dmg"

    depends_on macos: :catalina
  end
  on_big_sur do
    version "1.1.1"

    url "https://www.titanium-software.fr/download/11/CalHash.dmg"

    depends_on macos: :big_sur
  end
  on_monterey do
    version "1.1.9"

    url "https://www.titanium-software.fr/download/12/CalHash.dmg"

    depends_on macos: :monterey
  end
  on_ventura :or_newer do
    version "1.2.1"

    url "https://www.titanium-software.fr/download/13/CalHash.dmg"

    depends_on macos: "<= :ventura"
  end

  name "CalHash"
  desc "Calculate and compare file checksums"
  homepage "https://www.titanium-software.fr/en/calhash.html"

  livecheck do
    url :homepage
    regex(/>\s*CalHash\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  app "CalHash.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/CalHash Help*",
    "~/Library/Logs/CalHash.log",
    "~/Library/Preferences/com.titanium.Calhash.plist",
    "~/Library/Saved Application State/com.titanium.Calhash.savedState",
  ]
end
