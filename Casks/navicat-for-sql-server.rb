cask "navicat-for-sql-server" do
  version "15.0.20"
  sha256 "4ac267c944b208ab372d6a4b306fbe4fc4643c8e13b9665d8554b679d72a1a8a"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en"
  name "Navicat for SQL Server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  app "Navicat For SQL Server.app"
end
