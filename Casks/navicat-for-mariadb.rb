cask "navicat-for-mariadb" do
  version "15.0.24"
  sha256 "3b1e43fe232bbcb9322fdd04a5910a1f90641802298ee0a037954b40fbd24e1d"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  app "Navicat for MariaDB.app"
end
