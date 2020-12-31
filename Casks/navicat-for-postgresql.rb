cask "navicat-for-postgresql" do
  version "15.0.24"
  sha256 "e4d75b5fad48e4f43fae56b31104f381244694d5e4f5090246bf3b5237e97e12"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en"
  name "Navicat for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  app "Navicat for PostgreSQL.app"
end
