cask "navicat-for-sqlite" do
  version "15.0.24"
  sha256 "ebb44eb5c9b901fb18ca85aa595b80b21590373210f23ec11e3f4f0d9c0cb464"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en"
  name "Navicat for SQLite"
  desc "Database administration and development tool for SQLite"
  homepage "https://www.navicat.com/products/navicat-for-sqlite"

  app "Navicat for SQLite.app"
end
