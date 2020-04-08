cask 'macupdater' do
  version '1.5.4'
  sha256 '4ae6910fda61fae7ff5ba1a685eaa2114c908d44fa4b5234b7e838f0fcb6fd3f'

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
  appcast 'https://www.corecode.io/macupdater/macupdater.xml'
  name 'MacUpdater'
  homepage 'https://www.corecode.io/macupdater/index.html'

  auto_updates true

  app 'MacUpdater.app'
  binary "#{appdir}/MacUpdater.app/Contents/Resources/macupdater_client"

  uninstall quit:      'com.corecode.MacUpdater',
            launchctl: 'com.corecode.MacUpdaterLaunchHelper'

  zap trash: [
               '~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper',
               '~/Library/Application Support/MacUpdater',
               '~/Library/Application Support/MacUpdaterInstallHelper',
               '~/Library/Caches/com.corecode.MacUpdater',
               '~/Library/Containers/com.corecode.MacUpdaterLaunchHelper',
               '~/Library/Cookies/com.corecode.MacUpdater.binarycookies',
               '~/Library/Preferences/com.corecode.MacUpdater.plist',
             ]
end
