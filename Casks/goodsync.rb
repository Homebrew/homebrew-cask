cask 'goodsync' do
  version '10.10.7.7'
  sha256 '552b062800419cfb977c49ffe41deb5ab33d1a6bef990fd293d8615cd755d7d0'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
