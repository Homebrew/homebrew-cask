cask 'goodsync' do
  version '10.10.21.1'
  sha256 '651cfd0bde0a55a9d3466efb4155368402a613faee09397e578193480b5701d8'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
