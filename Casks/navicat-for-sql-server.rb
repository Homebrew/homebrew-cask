cask "navicat-for-sql-server" do
  version "15.0.22"
  sha256 "40c42e43c7f6d3fbf5d0dc212c9ba2895f12920772fb3e73410ea46320e38fb2"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en"
  name "Navicat for SQL Server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  app "Navicat For SQL Server.app"
end
