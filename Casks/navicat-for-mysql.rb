cask "navicat-for-mysql" do
  version "15.0.20"
  sha256 "d6a1deb2a0481d86e89d0101dd37f7cf796f4134506224078630eda1afa517db"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  app "Navicat for MySQL.app"
end
