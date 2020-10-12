cask "navicat-for-sqlite" do
  version "15.0.22"
  sha256 "f2455804cb845a82ab1439ca0f668dcdf9d2adc7ee749558a39f59627b858b52"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en"
  name "Navicat for SQLite"
  desc "Database administration and development tool for SQLite"
  homepage "https://www.navicat.com/products/navicat-for-sqlite"

  app "Navicat for SQLite.app"
end
