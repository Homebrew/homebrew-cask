cask 'rectangle' do
  version '0.27'
  sha256 '0a4bf3d4f252b80ed1a6f8b4beca646163eb01fefff457b33d333e42fee46330'

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
