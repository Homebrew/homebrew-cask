cask :v1 => 'navicat-for-postgresql' do
  version '11.1.9'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 '2666cf0137f55b1101549244cc5c36898460d9b2ea8ed278606c17b9e02b5b14'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for PostgreSQL.app'
end
