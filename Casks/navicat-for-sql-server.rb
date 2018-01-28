cask 'navicat-for-sql-server' do
  version '12.0.22'
  sha256 '660c5d33f133976389a0a1751b6c25035cd621bcae7293a605607a60141dfee9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: 'ce7e26ac5415db0e5b188cb43b5a578f909fcc1fb33f04b30ba62172e2ec72a4'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
