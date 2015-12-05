cask :v1 => 'navicat-for-sqlite' do
  version '11.1.17'
  sha256 '3494fdbdfe64472b5be3c23b6f55c80786ca93a4e3aa51e047db5315741dd740'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for SQLite.app'
end
