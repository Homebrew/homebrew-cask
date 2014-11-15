cask :v1 => 'navicat-for-sqlite' do
  version '11.1.5'
  sha256 'c6f8331d5353a8f6527397fb4ec754e012bba7d39aeeecfeeedd9cc42b643ad1'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
