cask "cocktail" do
  on_monterey :or_older do
    on_el_capitan :or_older do
      version "9.7"
      sha256 "ca6b4a264ca60a08ff45761f82b0b6161cbe3412bd6cbeedd5dbecebc8d26712"

      url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    end
    on_sierra do
      version "10.9.1"
      sha256 "c41bdcff4e0a1bdf3b0b1dfa11e12de71acf64010c7dccfd337ec2f42ca7bd4f"

      url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    end
    on_high_sierra do
      version "11.7"
      sha256 "e1d8b4529963e94b8a5d710ee3dd75f15423701aead815da271d624b2c653278"

      url "https://www.maintain.se/downloads/sparkle/highsierra/Cocktail_#{version}.zip"
    end
    on_mojave do
      version "12.5"
      sha256 "bdbda2d7c86e598dd9504ba3158dcab71d0b9e2b935b2917c45bb1696fc105cd"

      url "https://www.maintain.se/downloads/sparkle/mojave/Cocktail_#{version}.zip"
    end
    on_catalina do
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

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura do
    version "16.7"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}VE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+13.*?v?(\d+(?:\.\d+)+)/i)
    end
  end
  on_sonoma do
    version "17.11"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}SE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+14.*?v?(\d+(?:\.\d+)+)/i)
    end
  end
  on_sequoia :or_newer do
    version "18.5.2"
    sha256 :no_check

    url "https://www.maintain.se/downloads/Cocktail#{version.major}SE.dmg"

    livecheck do
      url :homepage
      regex(/macOS\s+15.*?v?(\d+(?:\.\d+)+)/i)
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
