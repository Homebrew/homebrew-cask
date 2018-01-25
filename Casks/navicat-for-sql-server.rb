cask 'navicat-for-sql-server' do
  version '12.0.19'
  sha256 'da221fe7ad7c8c236874dc9d21674fafa633e30fa96865052566b151b968083f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: 'dd1a89fef14a734ee841556207f0319801ff4d65695fffccc6c77a2a17bccc41'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
