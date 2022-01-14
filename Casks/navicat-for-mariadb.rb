cask "navicat-for-mariadb" do
  version "15.0.33"
  sha256 :no_check

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en"
    strategy :sparkle
  end

  app "Navicat for MariaDB.app"
end
