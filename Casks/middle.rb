cask 'middle' do
  version '1.3.6'
  sha256 '1ef92309ca6da66b42408fd1931d10ca64689bd10c474021b83687cf8b1eb600'

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
