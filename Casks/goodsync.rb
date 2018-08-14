cask 'goodsync' do
  version '10.9.3'
  sha256 'e48979301bde583fd77283261b35e016e568e5149a3ee069a42d7ec96553ad3c'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
