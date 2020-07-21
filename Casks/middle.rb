cask 'middle' do
  version '1.4.3'
  sha256 '7555b09867e7fb00e54cf8680b56822ad6b169b6e5d63d42668dcfeb17d17d1c'

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
