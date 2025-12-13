cask "cocktail" do
  on_ventura :or_older do
    on_catalina :or_older do
      version "13.3"
      sha256 "8fa2285b84360e9fea73024b9477dbc7ce1bf073fae36a86553c8c95c5fcfcc2"

      url "https://www.maintain.se/downloads/sparkle/catalina/Cocktail_#{version}.zip"
    end
    on_big_sur do
      version "14.5.0"
      sha256 :no_check

      url "https://www.maintain.se/downloads/Cocktail#{version.major}BSE.dmg"
    end
    on_monterey do
      version "15.6"
      sha256 :no_check

      url "https://www.maintain.se/downloads/Cocktail#{version.major}ME.dmg"
    end
    on_ventura do
      version "16.7"
      sha256 :no_check

      url "https://www.maintain.se/downloads/Cocktail#{version.major}VE.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma do
    version "17.12.1"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}SE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+14.*?v?(\d+(?:\.\d+)+)/i)
    end
  end
  on_sequoia do
    version "18.7.2"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}SE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+15.*?v?(\d+(?:\.\d+)+)/i)
    end
  end
  on_tahoe :or_newer do
    version "19.3.1"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}TE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+26.*?v?(\d+(?:\.\d+)+)/i)
    end
  end

  name "Cocktail"
  desc "Cleans, repairs and optimises computer systems"
  homepage "https://www.maintain.se/cocktail/"

  app "Cocktail.app"

  zap trash: [
    "~/Library/Preferences/com.maintain.cocktail.plist",
    "~/Library/Preferences/com.maintain.cocktail.ventura#{version.major}.plist",
  ]

  caveats do
    requires_rosetta
  end
end
