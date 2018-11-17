cask 'goodsync' do
  version '10.9.14'
  sha256 'e418e281b0be3fb64c775889660494ff62367363097ea7ed0a3e65a2b3f3c5c9'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
