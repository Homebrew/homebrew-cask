cask 'rectangle' do
  version '0.28'
  sha256 '5b0d3347c65f569a33e9031e6d749ed5a8df65288da5ab32625e18fa455ff92b'

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
