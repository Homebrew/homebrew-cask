cask :v1 => 'navicat-for-sqlite' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'd8dfce2de0af81f7c0883773a3c5ed1be64eb076fb67708344d0748244b7566a'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for SQLite.app'
end
