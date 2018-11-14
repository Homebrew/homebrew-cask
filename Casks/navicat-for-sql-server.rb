cask 'navicat-for-sql-server' do
  version '12.1.12'
  sha256 '6c1d240d87435778e9032697f37243e6dea7dc07ff5b4b15b4e05e3002afea36'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
