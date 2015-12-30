cask 'navicat-for-postgresql' do
  version '11.2.5'
  sha256 '84949d1e7e24a1cf6cd5989484a37a1d445d9592f96c377cd4baab463af1969a'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
