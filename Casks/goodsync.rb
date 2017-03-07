cask 'goodsync' do
  version '10.3.5'
  sha256 '82906f84aed0d9346d6056446f17a3bb49f6ec86c807426edd30285caeebb35c'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
