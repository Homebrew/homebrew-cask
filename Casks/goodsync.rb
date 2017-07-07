cask 'goodsync' do
  version '10.5.1'
  sha256 '40eb93ddd65fb153b2c6fc332326381a198c9ad3c80de223a7102e840ef4b068'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
