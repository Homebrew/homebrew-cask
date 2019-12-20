cask 'navicat-for-sql-server' do
  version '15.0.5'
  sha256 '9cc75eb4e5f3cf6fc4c155deabb6e8f448fe38f162f91a4004e578955b229eb9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
