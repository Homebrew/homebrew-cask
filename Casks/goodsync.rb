cask 'goodsync' do
  version '10.10.11.0'
  sha256 'dc68261631b77f6f6364e2360d1e283a1eaebda4a7a1a799cdee57d01105bb3d'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
