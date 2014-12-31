cask :v1 => 'navicat-for-mysql' do
  version '11.1.7'
  sha256 'e02a0fbd93b31a3ad1da2ce22d2e36570693f9e0baae3727df462915b9a17a55'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
