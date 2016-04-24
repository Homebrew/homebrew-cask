cask 'navicat-for-sql-server' do
  version '11.2.10'
  sha256 'f355faf534e2e4989193f572f8c9a141df3229b27b5f67113ad76a900929698f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
