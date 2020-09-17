cask "navicat-for-sqlite" do
  version "15.0.21"
  sha256 "d12fa018f5a88a73df5eab6041a5a8f3cbe6df8409ce969d0f433b9cee8a73c7"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en"
  name "Navicat for SQLite"
  desc "Database administration and development tool for SQLite"
  homepage "https://www.navicat.com/products/navicat-for-sqlite"

  app "Navicat for SQLite.app"
end
