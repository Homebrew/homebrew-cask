cask 'goodsync' do
  version '10.11.2.2'
  sha256 '111cbd3f4058d9b5efef6424714cc27afcee797381e88634cbcf40a526e73d80'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
