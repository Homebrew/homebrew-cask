cask :v1 => 'navicat-for-sql-server' do
  version '11.1.5'
  sha256 '6f7273798585129ba58a0d8f5eb8cb724f3f2dfd3f977ac408cd801c5be28bfc'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
