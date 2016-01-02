cask 'navicat-for-mysql' do
  version '11.2.5'
  sha256 'b0dfdb85c79fd5d84f8604db37f6a8375e063e84acb468e84468764042bb6340'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
