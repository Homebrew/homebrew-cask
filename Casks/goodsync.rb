cask 'goodsync' do
  version '10.10.6'
  sha256 'ef2f6e7168d8af28174117a8986a794af10b424b9d3a15f3df448f38235ef508'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
