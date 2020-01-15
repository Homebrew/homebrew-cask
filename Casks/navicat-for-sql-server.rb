cask 'navicat-for-sql-server' do
  version '15.0.7'
  sha256 '06b78cffefbe139a7721c0b77a70fc09efe429fa0e89223ec5164f9aae6c2fc0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
