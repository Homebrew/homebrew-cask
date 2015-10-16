cask :v1 => 'navicat-for-sqlite' do
  version '11.1.15'
  sha256 '53a2178861462ccc154e04d4108a3fbb0d45fe98f634547e97f3f035beb29493'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for SQLite.app'
end
