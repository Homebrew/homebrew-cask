cask 'goodsync' do
  version '10.9.16'
  sha256 '02b149c962fb554e20551cfc4a1c3835998773e0d3513cf5ef2c64ebea07d928'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
