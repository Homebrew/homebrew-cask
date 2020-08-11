cask "navicat-for-sqlite" do
  version "15.0.20"
  sha256 "e9ebc4073fb876e8825d902ae9a1c6ec8323e725b466bf969597672224658329"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en"
  name "Navicat for SQLite"
  desc "Database administration and development tool for SQLite"
  homepage "https://www.navicat.com/products/navicat-for-sqlite"

  app "Navicat for SQLite.app"
end
