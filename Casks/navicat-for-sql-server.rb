cask 'navicat-for-sql-server' do
  version '12.0.23'
  sha256 'b62ef46452db05e3ef9960b91538da7f8d71be63dbcb89f865bea0a8361c9f93'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: 'f0ed98261ce0906ae1c672560f5a6131175fb9c4e782517720e7a28c9e658e01'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
