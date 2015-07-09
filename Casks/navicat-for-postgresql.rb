cask :v1 => 'navicat-for-postgresql' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'ddc4dda1d15bc45550e10fc80c6a86f147dab8485198488f90ea3000045d5c79'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for PostgreSQL.app'
end
