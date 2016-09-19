cask 'navicat-for-sql-server' do
  version '11.2.14'
  sha256 'c60d1d493429b80cc380ff7ad880ed707fb005d428d46739de019b0085de468a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
