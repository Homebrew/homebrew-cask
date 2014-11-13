cask :v1 => 'navicat-for-mariadb' do
  version '11.1.5'
  sha256 '84f156288bfa92a83f3af70d615617d0c8e255825ad35368b05550366dc5d8e8'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
