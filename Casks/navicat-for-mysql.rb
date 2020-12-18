cask "navicat-for-mysql" do
  version "15.0.24"
  sha256 "1a2b0247fb598c4a9e0d2f0f5d5144f83913cb451aeff17c690abb1cb5715d4b"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  app "Navicat for MySQL.app"
end
