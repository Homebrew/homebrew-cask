cask "navicat-for-mariadb" do
  version "15.0.21"
  sha256 "0290b7cb99a2fbe778166cc81ac60399da4324948d6ecb7d498f4b53ebc7eb46"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  app "Navicat for MariaDB.app"
end
