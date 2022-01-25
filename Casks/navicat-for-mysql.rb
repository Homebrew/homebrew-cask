cask "navicat-for-mysql" do
  version "16.0.7"
  sha256 :no_check

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  livecheck do
    cask "navicat-premium"
  end

  app "Navicat for MySQL.app"
end
