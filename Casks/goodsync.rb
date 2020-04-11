cask 'goodsync' do
  version '10.11.5.5'
  sha256 'e536cc9ae2876c880a07dd9de56a0337f04e8633095697b04f5deebbf6483cd9'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
