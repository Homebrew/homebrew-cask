cask 'goodsync' do
  version '10.9.34.4'
  sha256 'ca1487a6767c63a810da3f317298bd32dcf63a2a4f45f14ae7c7fb260a80d173'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
