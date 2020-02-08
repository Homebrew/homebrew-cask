cask 'goodsync' do
  version '10.10.21.5'
  sha256 '40b303fa840e6370f504f7399ff6fc6eaefaf47cf757db1b57202f72f08db09a'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
