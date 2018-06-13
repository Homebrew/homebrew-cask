cask 'goodsync' do
  version '10.9.1'
  sha256 'c1e65d51f5ee985ba3600474de9b599acd97580dfc193eb55065b81beec4308b'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
