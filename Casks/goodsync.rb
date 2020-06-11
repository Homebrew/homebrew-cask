cask 'goodsync' do
  version '11.2.0.0'
  sha256 '18550fa916d2b2278b7f72cb5b601f75739de90a8a134017970b3b48510a428a'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          must_contain: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
