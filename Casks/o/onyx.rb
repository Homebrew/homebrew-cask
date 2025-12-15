cask "onyx" do
  sha256 :no_check

  # NOTE: We use separate `url` values in each of the macOS on_system blocks
  # so that the API data correctly includes URL variants for each.
  on_sequoia :or_older do
    on_catalina :or_older do
      version "3.8.7"

      url "https://www.titanium-software.fr/download/1015/OnyX.dmg"
    end
    on_big_sur do
      version "4.0.2"

      url "https://www.titanium-software.fr/download/11/OnyX.dmg"
    end
    on_monterey do
      version "4.2.7"

      url "https://www.titanium-software.fr/download/12/OnyX.dmg"
    end
    on_ventura do
      version "4.4.7"

      url "https://www.titanium-software.fr/download/13/OnyX.dmg"
    end
    on_sonoma do
      version "4.6.2"

      url "https://www.titanium-software.fr/download/14/OnyX.dmg"
    end
    on_sequoia do
      version "4.8.5"

      url "https://www.titanium-software.fr/download/15/OnyX.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_tahoe :or_newer do
    version "4.9.3"

    url "https://www.titanium-software.fr/download/26/OnyX.dmg"

    # We check the version on the homepage, as the version in the related plist
    # file can be out of date.
    livecheck do
      url :homepage
      regex(/>\s*OnyX\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s]*26\s*</i)
    end
  end

  name "OnyX"
  desc "Verify system files structure, run miscellaneous maintenance and more"
  homepage "https://www.titanium-software.fr/en/onyx.html"

  depends_on macos: [
    :catalina,
    :big_sur,
    :monterey,
    :ventura,
    :sonoma,
    :sequoia,
    :tahoe,
  ]

  app "OnyX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*",
    "~/Library/Logs/OnyX.log",
    "~/Library/Preferences/com.titanium.OnyX.plist",
    "~/Library/Preferences/com.titanium.OnyX.update.plist",
    "~/Library/Preferences/OnyX.plist",
    "~/Library/Saved Application State/com.titanium.OnyX.savedState",
  ]
end
