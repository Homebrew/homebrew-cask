cask "navicat-for-mariadb" do
  version "15.0.25"
  sha256 "9b3398417b552887600fc1eb5d5c003238cdfeb7a9c49bd6371b07288ce952ed"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  app "Navicat for MariaDB.app"
end
