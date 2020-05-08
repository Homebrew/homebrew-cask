cask 'goodsync' do
  version '11.1.7.7'
  sha256 'defb18d018ddeef00363700544a798cd6ffbe63d90c6e88d13fe8a11a8fac040'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
