cask 'navicat-for-sql-server' do
  version '12.0.9'
  sha256 'f1ed72d07a79600c95a969632365ed8f8223e20f6dc2818737ce095656d307a1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note#M',
          checkpoint: '7141a0cea3e1e67444f620a8fbfa87eeaa47e51ab59bd3a03ff2a6764c580a18'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
