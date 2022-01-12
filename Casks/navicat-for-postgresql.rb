cask "navicat-for-postgresql" do
  version "15.0.33"
  sha256 :no_check

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name "Navicat for PostgreSQL"
  desc "Database administration and development tool for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en"
    strategy :sparkle
  end

  app "Navicat for PostgreSQL.app"
end
