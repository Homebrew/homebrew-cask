cask 'goodsync' do
  version '10.8.7'
  sha256 '46f8f7fe4e806494e33ea60550684f386b708562ba5094f68f8a4b7b2e4594da'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '2c67099496bbbc886130a4ac570963bff2a3cde07b55f35eb99f491e5cf867da'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
