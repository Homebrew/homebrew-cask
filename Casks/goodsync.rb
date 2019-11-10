cask 'goodsync' do
  version '10.10.13.0'
  sha256 'b14510c8318fe358846cb23ad246a5f37e7ae2a8ac1d178240a3ae6b6262167c'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
