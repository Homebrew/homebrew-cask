cask '115browser' do
  version '8.6.4.5'
  sha256 '48c226ef862080e88993c9ff6a913a7922822f2ba15423bdce3923b66cf305a0'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  depends_on macos: '>= :mountain_lion'

  app '115Browser.app'

  zap trash: [
               '~/Library/Application Support/115Browser',
               '~/Library/Caches/115Browser',
               '~/Library/Caches/org.115Browser.115Browser',
               '~/Library/Preferences/org.115Browser.115Browser.plist',
               '~/Library/Saved Application State/org.115Browser.115Browser.savedState',
             ]
end
