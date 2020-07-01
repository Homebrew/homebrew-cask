cask 'middle' do
  version '1.4.2'
  sha256 '5d60f38409611b74103e105374f67f4d12b1b2ab0a6376d9f44dd4b47d9339b9'

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
