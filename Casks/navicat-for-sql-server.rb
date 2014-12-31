cask :v1 => 'navicat-for-sql-server' do
  version '11.1.7'
  sha256 '6f3d7e13d929395f92ccf040867fa80b3cf29651070a6473ed574da76fbb461e'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
