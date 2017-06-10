cask '115browser' do
  version '8.4.0.19'
  sha256 '0097f09f4cbf0db887d9ccf47ec35bcebaedb0252cf56938785857015a20c207'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  appcast 'https://pc.115.com/#mac',
          checkpoint: '3226edb24d62209969e17ad1dbd21953bfc71043dfe5893658501d3c196eec89'
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  depends_on macos: '>= :mountain_lion'

  app '115Browser.app'

  zap delete: [
                '~/Library/Application Support/115Browser',
                '~/Library/Caches/115Browser',
                '~/Library/Caches/org.115Browser.115Browser',
                '~/Library/Preferences/org.115Browser.115Browser.plist',
                '~/Library/Saved Application State/org.115Browser.115Browser.savedState',
              ]
end
