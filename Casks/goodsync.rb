cask 'goodsync' do
  version '11.0.2.2'
  sha256 '4824c00fcf1b14452e1686b68c0e7464efde92f5249c57eb740d847112ca7873'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
