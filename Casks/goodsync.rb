cask 'goodsync' do
  version '10.11.4.4'
  sha256 '2269bd11d5fda9cd0d0fb457c6f31c49698899fe3e343f2e0c64699d57cf9fdb'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
