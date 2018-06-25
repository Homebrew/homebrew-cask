cask 'goodsync' do
  version '10.9.2'
  sha256 '3b8dc3e2ae9fe7f3c5434207fba73e3d922e48eaf51aea34663f5d6b8f3b14b0'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
