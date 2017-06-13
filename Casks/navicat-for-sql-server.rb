cask 'navicat-for-sql-server' do
  version '12.0.2'
  sha256 'a989eaca6becc7f5a243922de7b8fa6c78dc3f4046f2c0e6632e270061d7a0a9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note',
          checkpoint: 'fecfcb9ca68e5b374c1d1dad8a8facac205104df9e2e94e2ba43a18574e7a528'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
