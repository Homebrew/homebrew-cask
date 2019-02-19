cask 'goodsync' do
  version '10.9.24.4'
  sha256 '51d28b8761e754260404cdd039fbe4aad9db14278ef8dacb9137f8f47d177807'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
