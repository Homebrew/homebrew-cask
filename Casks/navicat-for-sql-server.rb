cask 'navicat-for-sql-server' do
  version '12.0.14'
  sha256 'e76259cd1db7d3c6b7c4e76413859b18d32842f45f16ca908768b4e9cf2c7f1c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note#M',
          checkpoint: '56bbc38f9c5b9b1e55dfb0ac889e17796d174a36be3477a6d4de59bb8658daed'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
