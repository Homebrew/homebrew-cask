cask 'goodsync' do
  version '10.10.1.1'
  sha256 'c3a50bb297237bf1bd0f7bd659dda7b12c46bd35d6b83f9ec40a7ff6802a817b'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
