cask "navicat-for-sqlite" do
  version "15.0.25"
  sha256 "0ae81d2fa2a0c11bebf412974def7f46e9e5578d17882f355f8936e51ccd929e"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en"
  name "Navicat for SQLite"
  desc "Database administration and development tool for SQLite"
  homepage "https://www.navicat.com/products/navicat-for-sqlite"

  app "Navicat for SQLite.app"
end
