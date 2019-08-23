cask 'soulver' do
  version '3.1.0-39'
  sha256 '3bceea37feb7f041e41762b320139a558cf2ee75c812239496a4cd392b7e4063'

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
