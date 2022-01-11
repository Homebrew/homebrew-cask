cask "navicat-for-sql-server" do
  version "15.0.33"
  sha256 :no_check

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name "Navicat for SQL Server"
  desc "Database administration and development tool for SQL-server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en"
    strategy :sparkle
  end

  app "Navicat For SQL Server.app"
end
