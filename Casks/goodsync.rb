cask 'goodsync' do
  version '10.10.27.7'
  sha256 '6990a2ef67c49b097497228ca26999a8ae2b8cad6533618d711f95c83b2410ec'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
