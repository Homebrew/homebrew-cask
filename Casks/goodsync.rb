cask 'goodsync' do
  version '10.10.16.6'
  sha256 'f6a4dfa3fd2227bc466ee916dc10c2207b4e831a1374184a6cd948de35094b87'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
