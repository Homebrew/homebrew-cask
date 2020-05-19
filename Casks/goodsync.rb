cask 'goodsync' do
  version '11.1.9.0'
  sha256 '0269464798f939be91001d39bff9ba0840a59962efdcbab62bdd6c7ddf880960'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
