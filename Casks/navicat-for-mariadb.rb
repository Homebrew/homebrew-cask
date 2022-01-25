cask "navicat-for-mariadb" do
  version "16.0.7"
  sha256 :no_check

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat for MariaDB.app"
end
