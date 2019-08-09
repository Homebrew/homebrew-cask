cask 'goodsync' do
  version '10.10.3.3'
  sha256 '392de7ff0a1e9d10191d66c88bf6c7b903bb5645b4fe52e733118fe9e7d83e7b'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
