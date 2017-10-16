cask 'navicat-for-sql-server' do
  version '12.0.15'
  sha256 'c30781b244146d53855ea5e7051e1a81ecac603c8c58247235f76c5a5aef1751'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note',
          checkpoint: '0bdb1f454b32b8f421997c0f5bf0b3d0fcd660996dc2357912b0d7d0689ff9a8'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
