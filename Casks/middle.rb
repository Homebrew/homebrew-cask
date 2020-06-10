cask 'middle' do
  version '1.3.7'
  sha256 '66de685e60fb76fff97618913304f99a105e6f8a2ab82b125a602bb7484bd361'

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
