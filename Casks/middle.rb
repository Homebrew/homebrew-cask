cask 'middle' do
  version '1.3.5'
  sha256 '384fc0c49b4fd11d22adee82fee53d148484c2a86eeabe0ce9a5e63ee1018c0a'

  url "https://middleclick.app/downloads/Middle#{version}.dmg"
  appcast 'https://middleclick.app/downloads/updates.xml'
  name 'Middle'
  homepage 'https://middleclick.app/'

  auto_updates true

  app 'Middle.app'

  uninstall quit: 'com.knollsoft.Middle'

  zap trash: [
               '~/Library/Containers/com.knollsoft.MiddleLauncher',
               '~/Library/Preferences/com.knollsoft.Middle.plist',
               '~/Library/Caches/com.knollsoft.Middle',
               '~/Library/Cookies/com.knollsoft.Middle.binarycookies',
               '~/Library/Application Support/Middle',
             ]
end
