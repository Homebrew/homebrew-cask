cask '115browser' do
  version '7.2.4.12'
  sha256 'bd2a578dc84b9fd719b0af004d010059a78de62d534999e722e2f5131eb3bd02'

  url "http://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  app '115Browser.app'

  zap delete: [
                '~/Library/Application Support/115Browser',
                '~/Library/Caches/115Browser',
                '~/Library/Preferences/com.115.115browser.plist',
                '~/Library/Saved Application State/com.115.115browser.savedState',
              ]
end
