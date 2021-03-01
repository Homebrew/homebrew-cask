cask "navicat-for-postgresql" do
  version "15.0.25"
  sha256 "95edf28969b23897e82f5487975cbe71ec9846316b0fc57dcfc652a7b202eb1a"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en"
  name "Navicat for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  app "Navicat for PostgreSQL.app"
end
