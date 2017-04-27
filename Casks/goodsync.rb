cask 'goodsync' do
  version '10.4.3'
  sha256 '088346789c515709584f78551bbc8c82c6bdf2dc6a1c9301f6d77a1f33066d59'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
