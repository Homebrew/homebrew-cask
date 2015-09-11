cask :v1 => 'navicat-for-sql-server' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'b571b103d60d83a17903890462597300b3d9149086cfc278e05d32cf7f90d2c9'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat For SQL Server.app'
end
