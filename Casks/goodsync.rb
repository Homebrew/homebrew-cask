cask 'goodsync' do
  version '10.10.0.0'
  sha256 '1d1d0042e865a63fa78467180512e111fab2577f7f0bf2c610260dfcf9deabeb'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
