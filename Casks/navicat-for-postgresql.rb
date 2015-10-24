cask :v1 => 'navicat-for-postgresql' do
  version '11.1.15'
  sha256 'b0f0bf0a70f4399bdf66d683a83749aa85a1e17b183249ac690d32be9e9c4500'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for PostgreSQL.app'
end
