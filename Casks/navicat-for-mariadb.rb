cask "navicat-for-mariadb" do
  version "15.0.22"
  sha256 "a3461c161b3dd14265ff9e7e8db6366598fdd25c3b65f97034b9962ffaf9fcaa"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  app "Navicat for MariaDB.app"
end
