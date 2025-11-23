cask "deeper" do
  sha256 :no_check

  # NOTE: We use separate `url` values in each of the macOS on_system blocks
  # so that the API data correctly includes URL variants for each.
  on_sequoia :or_older do
    on_catalina :or_older do
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
    on_sonoma do
      version "3.0.9"

      url "https://www.titanium-software.fr/download/14/Deeper.dmg"
    end
    on_sequoia do
      version "3.1.7"

      url "https://www.titanium-software.fr/download/15/Deeper.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_tahoe :or_newer do
    version "3.2.1"

    url "https://www.titanium-software.fr/download/26/Deeper.dmg"

    # We check the version on the homepage, as the version in the related plist
    # file can be out of date.
    livecheck do
      url :homepage
      regex(/>\s*Deeper\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s]*26\s*</i)
    end
  end

  name "Deeper"
  desc "Tool to enable and disable hidden functions of Finder and other apps"
  homepage "https://www.titanium-software.fr/en/deeper.html"

  depends_on macos: [
    :catalina,
    :big_sur,
    :monterey,
    :ventura,
    :sonoma,
    :sequoia,
    :tahoe,
  ]

  app "Deeper.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Deeper Help*",
    "~/Library/Logs/Deeper.log",
    "~/Library/Preferences/com.titanium.Deeper.plist",
    "~/Library/Saved Application State/com.titanium.Deeper.savedState",
  ]
end
