cask 'goodsync' do
  version '10.10.25.5'
  sha256 '6f40befde16efc04c9c86f44fa5a0f15c34df2c680c13dbe1872e54edd6edce6'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
