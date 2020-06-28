cask 'goodsync' do
  version '11.2.5.5'
  sha256 '34af23d43fca74c910fd2bb530fe9cce8839ab40272fbedeee4a0dcecdc32d3c'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          must_contain: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
