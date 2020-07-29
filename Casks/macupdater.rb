cask 'macupdater' do
  version '1.5.5'
  sha256 'e5fe09b3d93226a0be7f83676b12ccb3e7871643da5f5d51d1ce10f5c5f53ecd'

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
