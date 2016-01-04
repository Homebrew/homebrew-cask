cask 'navicat-for-sql-server' do
  version '11.2.6'
  sha256 '443681fd23c137cbe97e7aa84e74873a561fcaf3b8f8a5fec13b4d16d91dd94c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
