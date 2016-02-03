cask 'navicat-for-sql-server' do
  version '11.2.7'
  sha256 'b960162807dcf76f6360efd6f2b3b5cf706dcba4f287ee7deda30c7e032b9590'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
