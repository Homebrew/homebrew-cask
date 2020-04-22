cask 'goodsync' do
  version '11.1.6.8'
  sha256 '9b2cff74afa6672714e06637779070edb49f7a48c817988af04b366a7c3bec7e'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
