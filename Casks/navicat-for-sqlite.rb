cask :v1 => 'navicat-for-sqlite' do
  version '11.1.9'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'a9c4c8137de01fb223f3820cf21dbe7c77d2e0a923352f0934be9f7fd9511d86'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for SQLite.app'
end
