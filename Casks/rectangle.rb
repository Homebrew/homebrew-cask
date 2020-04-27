cask 'rectangle' do
  version '0.26'
  sha256 'ac811ef13f84cf07c4071adcf74d5d11d702c52bc183ac09cf260680681839a5'

  url "https://rectangleapp.com/downloads/Rectangle#{version}.dmg"
  appcast 'https://www.rectangleapp.com/downloads/updates.xml'
  name 'Rectangle'
  homepage 'https://rectangleapp.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Rectangle.app'

  uninstall quit:      'com.knollsoft.Rectangle',
            launchctl: 'com.knollsoft.RectangleLauncher'

  zap trash: [
               '~/Library/Application Scripts/com.knollsoft.RectangleLauncher',
               '~/Library/Application Support/Rectangle',
               '~/Library/Caches/com.knollsoft.Rectangle',
               '~/Library/Containers/com.knollsoft.RectangleLauncher',
               '~/Library/Preferences/com.knollsoft.Rectangle.plist',
             ]
end
