cask 'navicat-for-sql-server' do
  version '12.0.11'
  sha256 'fe436b0ae16b04ca19fb434cc1fccddef45317201aac1ff4ce1893e907f27ef8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note#M',
          checkpoint: '39bbf588df7ca4739b78e95580b50e4218c8eaa2e6e71db9d8e53b5fc5e00acd'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
