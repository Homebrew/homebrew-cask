cask 'navicat-for-sql-server' do
  version '15.0.6'
  sha256 '2ed250e167c22c383500b3b7d71fc2bf6ee01a4c090e4fba6fbd8c850000dc54'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
