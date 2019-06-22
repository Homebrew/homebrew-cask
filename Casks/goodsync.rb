cask 'goodsync' do
  version '10.9.35.5'
  sha256 'c073d3cbd5b46c9b4222c8495c06f88815521bde25241a0f1148d80ef9843dd8'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
