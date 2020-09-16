cask "navicat-for-postgresql" do
  version "15.0.21"
  sha256 "dec14cccc67897b2b4b89630dc05c8b0eb224f3d2f1e0bc03e70f54ba4f95b38"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en"
  name "Navicat for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  app "Navicat for PostgreSQL.app"
end
