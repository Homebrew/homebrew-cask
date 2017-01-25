cask '115browser' do
  version '7.2.5.15'
  sha256 '949cc0870ab585ae6cce916485f6d4751831c4543f1de0cc57ceb7557a62408e'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  app '115Browser.app'

  zap delete: [
                '~/Library/Application Support/115Browser',
                '~/Library/Caches/115Browser',
                '~/Library/Caches/com.115.115browser',
                '~/Library/Preferences/com.115.115browser.plist',
                '~/Library/Saved Application State/com.115.115browser.savedState',
              ]
end
