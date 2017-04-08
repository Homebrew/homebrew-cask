cask '115browser' do
  version '8.2.0.25'
  sha256 'b4c04ca9073d7166c384f4ad47ec3d2edd5751c29b27f7a878193c06866875a5'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
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
