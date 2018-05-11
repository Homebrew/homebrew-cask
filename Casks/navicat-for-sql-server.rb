cask 'navicat-for-sql-server' do
  version '12.0.26'
  sha256 '3ae0f46eb7166a1ccdc9efb19cd19d34001eaadba5a2dc9ed45195011f2e2df8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: '51dcd53f1fe91cda03e6281f912b6832a6b80652f32e24232d5b9730ad0e2ebb'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
