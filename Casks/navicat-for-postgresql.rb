cask :v1 => 'navicat-for-postgresql' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'b0050f2bb7cd583749fa5abfc155a2df6f6ed24378b3c69cab00e5e14c3032be'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for PostgreSQL.app'
end
