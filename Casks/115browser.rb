cask '115browser' do
  version '8.0.0.52'
  sha256 'b9fdce91f5320e9b287f6a958ac9c2c526fa19788ecb69c331f9b31f145e49d5'

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
