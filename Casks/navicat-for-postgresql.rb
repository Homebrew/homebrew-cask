cask "navicat-for-postgresql" do
  version "15.0.20"
  sha256 "815038635fc11c8322b98909c332f45929b95a97de0d2b8d04575d83142aa136"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en"
  name "Navicat for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  app "Navicat for PostgreSQL.app"
end
