cask "navicat-for-sql-server" do
  version "15.0.21"
  sha256 "4043da7be5a5263f3f33859b568d4e3029f7f99196386f01a3152d9b7d33b1a3"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en"
  name "Navicat for SQL Server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  app "Navicat For SQL Server.app"
end
