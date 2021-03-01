cask "cocktail" do
  if MacOS.version <= :yosemite
    version "8.9.2"
    sha256 "acc7d191313fa0eb4109ae56f62f73e7ed6685f7d7d438d5138b85d68e40edd8"

    url "https://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast "https://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml"
  elsif MacOS.version <= :el_capitan
    version "9.7"
    sha256 "ca6b4a264ca60a08ff45761f82b0b6161cbe3412bd6cbeedd5dbecebc8d26712"

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast "https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml"
  elsif MacOS.version <= :sierra
    version "10.9.1"
    sha256 "c41bdcff4e0a1bdf3b0b1dfa11e12de71acf64010c7dccfd337ec2f42ca7bd4f"

    url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    appcast "https://www.maintain.se/downloads/sparkle/sierra/sierra.xml"
  elsif MacOS.version <= :high_sierra
    version "11.7"
    sha256 "e1d8b4529963e94b8a5d710ee3dd75f15423701aead815da271d624b2c653278"

    url "https://www.maintain.se/downloads/sparkle/highsierra/Cocktail_#{version}.zip"
    appcast "https://www.maintain.se/downloads/sparkle/highsierra/highsierra.xml"
  elsif MacOS.version <= :mojave
    version "12.5"
    sha256 "bdbda2d7c86e598dd9504ba3158dcab71d0b9e2b935b2917c45bb1696fc105cd"

    url "https://www.maintain.se/downloads/sparkle/mojave/Cocktail_#{version}.zip"
    appcast "https://www.maintain.se/downloads/sparkle/mojave/mojave.xml"
  elsif MacOS.version <= :catalina
    version "13.2.6"
    sha256 "9b59655ef2511218e16736679b0eadde43f9b1a90e7162ffef2e284ca71d149b"

    url "https://www.maintain.se/downloads/sparkle/catalina/Cocktail_#{version}.zip"
    appcast "https://www.maintain.se/downloads/sparkle/catalina/catalina.xml"
  else
    version "14.2.3"
    sha256 "df91ea36dd50d1c2e90dc580818fa015c02a4c413cd8ff7127e0b7b9a5c85bad"

    url "http://usa.maintain.se/Cocktail#{version.major}BSE.dmg"
    appcast "http://www.maintain.se/cocktail/"
  end

  name "Cocktail"
  desc "Cleans, repairs and optimizes computer systems"
  homepage "https://www.maintain.se/cocktail/"

  app "Cocktail.app"
end
