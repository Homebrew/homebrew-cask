cask "cocktail" do
  on_sonoma :or_older do
    on_catalina :or_older do
      version "13.3"
      sha256 "8fa2285b84360e9fea73024b9477dbc7ce1bf073fae36a86553c8c95c5fcfcc2"

      url "https://www.maintain.se/downloads/sparkle/catalina/Cocktail_#{version}.zip"

      uninstall quit: "com.maintain.cocktail.catalina13"
    end
    on_big_sur do
      version "14.5.0"
      sha256 :no_check

      url "https://www.maintain.se/downloads/Cocktail#{version.major}BSE.dmg"

      uninstall quit: "com.maintain.cocktail.bigsur14"
    end
    on_monterey do
      version "15.6"
      sha256 :no_check

      url "https://www.maintain.se/downloads/Cocktail#{version.major}ME.dmg"

      uninstall quit: "com.maintain.cocktail.monterey15"
    end
    on_ventura do
      version "16.7"
      sha256 :no_check

      url "https://www.maintain.se/downloads/Cocktail#{version.major}VE.dmg"

      uninstall quit: "com.maintain.cocktail.ventura165"
    end
    on_sonoma do
      version "17.14"
      sha256 :no_check

      url "https://www.maintain.se/downloads/Cocktail#{version.major}SE.dmg"

      uninstall quit: "com.maintain.cocktail.ventura165"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia do
    version "18.9"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}SE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+15.*?v?(\d+(?:\.\d+)+)/i)
    end

    uninstall quit: "com.maintain.cocktail.sequoia"
  end
  on_tahoe do
    version "19.9.3"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}TE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+26.*?v?(\d+(?:\.\d+)+)/i)
    end

    uninstall quit: "com.maintain.cocktail.tahoe"
  end
  on_golden_gate :or_newer do
    version "20.0.2"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}GG.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+27.*?v?(\d+(?:\.\d+)+)/i)
    end

    uninstall quit: "com.maintain.cocktail.goldengate"
  end

  name "Cocktail"
  desc "Cleans, repairs and optimises computer systems"
  homepage "https://www.maintain.se/cocktail/"

  depends_on :macos

  app "Cocktail.app"

  zap trash: [
    "~/Library/Logs/Cocktail.log",
    "~/Library/Preferences/com.maintain.cocktail.*.plist",
    "~/Library/Preferences/com.maintain.cocktail.plist",
  ]

  caveats do
    requires_rosetta
  end
end
