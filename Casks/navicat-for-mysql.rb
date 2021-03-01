cask "navicat-for-mysql" do
  version "15.0.25"
  sha256 "4fc9e7716b21c9d853a4ad7b3464b34a7e63d4e522e9ef0a37a133758743024f"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  app "Navicat for MySQL.app"
end
