cask :v1 => 'navicat-for-mysql' do
  version '11.1.17'
  sha256 'ec38ed419eee4090020ef4f475625a5c3ea431e25dc7c0ecce776e1fe920c20f'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MySQL.app'
end
