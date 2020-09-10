cask "navicat-for-mariadb" do
  version "15.0.20"
  sha256 "bda962e26b19c79afcfa3e2ffe53b7429a17bf92312840c95096c00a5b31e9cd"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  app "Navicat for MariaDB.app"
end
