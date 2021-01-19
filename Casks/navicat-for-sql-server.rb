cask "navicat-for-sql-server" do
  version "15.0.25"
  sha256 "03cbf8c443781086ab5f73ea6d1e41e5a0313b3dae9e137770342cdd84808cc8"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en"
  name "Navicat for SQL Server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  app "Navicat For SQL Server.app"
end
