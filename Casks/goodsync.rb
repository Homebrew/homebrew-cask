cask 'goodsync' do
  version '10.3.0'
  sha256 '9e1f779867816e9fcaca00e034a8a8f626905b9e57afe635df8b29fb2a9d24e5'

  url "https://www.goodsync.com/download/goodsync-#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
