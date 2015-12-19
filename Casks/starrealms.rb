cask 'starrealms' do
  version '2.33'
  sha256 'd87c71d3592f0002c4d5fa8b2264b1a5924d72ae4d0fc5d7d68d428d3f83ecc1'

  url "http://downloads.starrealms.com/StarRealms-v#{version.delete('.')}.dmg"
  name 'Star Realms'
  homepage 'http://www.starrealms.com/digital-game/'
  license :freemium

  app 'StarRealms.app'
end
