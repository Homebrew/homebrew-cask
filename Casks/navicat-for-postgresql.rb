cask "navicat-for-postgresql" do
  version "15.0.22"
  sha256 "ebea373de9c16ede0fb45f2b75045b8f5b268c75d86dd34a09cfc46b8ebf7825"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en"
  name "Navicat for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  app "Navicat for PostgreSQL.app"
end
