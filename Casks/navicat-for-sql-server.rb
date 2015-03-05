cask :v1 => 'navicat-for-sql-server' do
  version '11.1.9'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'e4024315d51ccd42aac5bf65754f9bb7b6bb11692e8013df744fe25db9cded40'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat For SQL Server.app'
end
