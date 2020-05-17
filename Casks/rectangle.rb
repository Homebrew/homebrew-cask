cask 'rectangle' do
  version '0.29'
  sha256 'e9e259d6b27e378b9a197164ce19c1a9d180861c01691f07642ef568927268a7'

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
