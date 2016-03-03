cask 'navicat-for-sql-server' do
  version '11.2.9'
  sha256 'd18c55cae54301899ca627446fba7f2d7075fb8b0de0292fde69426f47f62f64'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
