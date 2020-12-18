cask "navicat-for-sql-server" do
  version "15.0.24"
  sha256 "90ceb02d117db62dc4e6c59d7af7fd6c5bfaba995fdd6970cdaed64bd21cea3b"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en"
  name "Navicat for SQL Server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  app "Navicat For SQL Server.app"
end
