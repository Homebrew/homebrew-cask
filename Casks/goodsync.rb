cask 'goodsync' do
  version '11.1.8.8'
  sha256 'f7aafe8f205e5c29d737c04252667316ee59f809841f8f188397fd0eddbe1cf9'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
