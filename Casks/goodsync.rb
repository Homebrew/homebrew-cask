cask 'goodsync' do
  version '10.10.23.3'
  sha256 '9a3fc05246a173b39e507b9cf5f3d0ee7334b4466dc4d000e4d99fb73cdedf99'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
