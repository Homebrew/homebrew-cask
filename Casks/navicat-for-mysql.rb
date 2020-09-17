cask "navicat-for-mysql" do
  version "15.0.21"
  sha256 "f99729a5ab73934967919755dbc7b018b082e859f3adefae76bc76eaf70c8d7e"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  app "Navicat for MySQL.app"
end
