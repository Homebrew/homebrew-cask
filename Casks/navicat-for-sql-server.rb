cask 'navicat-for-sql-server' do
  version '11.2.13'
  sha256 '616573369bea934551601c4cb7599f2651fea5fe12529989c9fd76b945c0ab94'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
