cask 'goodsync' do
  version '11.2.2.2'
  sha256 '25f1cf54204ac893198fef982a8bad383392a73b8c331d13a27e347bebde3b8d'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          must_contain: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
