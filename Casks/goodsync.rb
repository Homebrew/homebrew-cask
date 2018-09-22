cask 'goodsync' do
  version '10.9.8'
  sha256 'ddd01ab9577ece630e69b20ee4616d46979e37a210118dcfa61a2a52df98e7c5'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
