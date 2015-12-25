cask 'navicat-for-oracle' do
  version '11.2.5'
  sha256 'fa7813994162ce2f80f106907dd3feff87b2d783cf3c23de10421c61badab1b2'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
