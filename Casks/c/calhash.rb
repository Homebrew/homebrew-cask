cask "calhash" do
  sha256 :no_check

  on_sonoma :or_older do
    on_catalina do
      version "1.0.5"

      url "https://www.titanium-software.fr/download/1015/CalHash.dmg"
    end
    on_big_sur do
      version "1.1.1"

      url "https://www.titanium-software.fr/download/11/CalHash.dmg"
    end
    on_monterey do
      version "1.1.9"

      url "https://www.titanium-software.fr/download/12/CalHash.dmg"
    end
    on_ventura do
      version "1.2.1"

      url "https://www.titanium-software.fr/download/13/CalHash.dmg"
    end
    on_sonoma do
      version "1.3.4"

      url "https://www.titanium-software.fr/download/14/CalHash.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia :or_newer do
    version "1.4.4"

    url "https://www.titanium-software.fr/download/15/CalHash.dmg"

    # We check the version on the homepage, as the version in the related plist
    # file can be out of date.
    livecheck do
      url :homepage
      regex(/>\s*CalHash\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s]*15\s*</i)
    end
  end

  name "CalHash"
  desc "Calculate and compare file checksums"
  homepage "https://www.titanium-software.fr/en/calhash.html"

  depends_on macos: [
    :catalina,
    :big_sur,
    :monterey,
    :ventura,
    :sonoma,
    :sequoia,
  ]

  app "CalHash.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/CalHash Help*",
    "~/Library/Logs/CalHash.log",
    "~/Library/Preferences/com.titanium.Calhash.plist",
    "~/Library/Saved Application State/com.titanium.Calhash.savedState",
  ]
end
