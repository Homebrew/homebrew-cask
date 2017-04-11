cask 'goodsync' do
  version '10.4.1'
  sha256 '7b59f531f88aa417ff2ec414a27a056787e146c4d79325a6afa074088273a6a1'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
