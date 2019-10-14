cask 'soulver' do
  version '3.1.2.2-54'
  sha256 'f731d53296cdd44914571a20f4c4fa039ccfca5528371d59214d2c712ed34030'

  url "https://soulver.app/mac/sparkle/soulver-#{version}.zip"
  appcast 'https://soulver.app/mac/sparkle/appcast.xml'
  name 'Soulver'
  homepage 'https://soulver.app/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app "Soulver #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Soulver 3',
               '~/Library/Application Support/app.soulver.mac',
               '~/Library/Preferences/app.soulver.mac.plist',
             ]
end
