cask :v1 => 'navicat-for-sqlite' do
  version '11.1.7'
  sha256 'f3723c04a054937fa921db14f3a50322361ef0a8d1d7a6fab4a9be866eccaade'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for SQLite.app'
end
