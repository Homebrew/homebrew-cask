cask :v1 => 'navicat-for-postgresql' do
  version '11.1.7'
  sha256 '9149775caec5c381f6e28ac4cdf7492d2d42d181e503a25295a8c57e8ebae892'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
