cask :v1 => 'navicat-for-postgresql' do
  version '11.1.17'
  sha256 '825ac85ecbe2d1df43dd2b7ba94fea625ae3468fc73459cc56bab0206472affd'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for PostgreSQL.app'
end
