cask 'goodsync' do
  version '10.10.19.5'
  sha256 '048754da5960aba71938418d14f8b00fb8ab707a4a3965dd7dd29277102cfe44'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
