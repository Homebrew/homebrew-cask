cask :v1 => 'navicat-for-postgresql' do
  version '11.1.12'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 '5c0a4fbf2f6e41f04db6660bdda876f5f8ed5e196ef683791f20bbe7c421f378'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for PostgreSQL.app'
end
