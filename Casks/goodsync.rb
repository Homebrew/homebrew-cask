cask 'goodsync' do
  version '10.10.9.5'
  sha256 'cb0babbe54ee0848527e8253cf28b2d447fd5e17271d84f33a3b9e6e6fd52a7a'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
