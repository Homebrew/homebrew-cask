cask 'goodsync' do
  version '10.8.0'
  sha256 '6447ff2bcdd8e96c2e9f9b0fdbcea92dc8a3b56aed515b7b1dbda73f35e46d07'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: 'bb46ea5b966c5e733b703f6732c2669e6c24cfeb5571b557873b356350cdb1af'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
