cask 'goodsync' do
  version '10.9.10'
  sha256 '7874f12a00857479d19a0a08491528ec71c41874f404a232196dc23775c612aa'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
