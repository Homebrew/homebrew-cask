cask 'navicat-for-sql-server' do
  version '12.1.15'
  sha256 'c8b2de0729e236f11d261f2e3dfb356098ca32fedb87f1767ae44f7e4270d310'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
