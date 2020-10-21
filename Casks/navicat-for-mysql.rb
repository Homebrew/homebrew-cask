cask "navicat-for-mysql" do
  version "15.0.22"
  sha256 "11a79f0281a51a6e395e31a35e2252cba1c3b8b2c324c9bd17eec82a8e66bcdb"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  app "Navicat for MySQL.app"
end
