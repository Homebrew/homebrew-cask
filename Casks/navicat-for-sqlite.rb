cask :v1 => 'navicat-for-sqlite' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 '94b2611f086c6df75e0c0f7b3023708f883fee20dd72768efda97a353093f85c'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for SQLite.app'
end
