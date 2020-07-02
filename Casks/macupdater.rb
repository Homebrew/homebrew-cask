cask 'macupdater' do
  version '1.5.6'
  sha256 'ada2f02f42b656f7d9e5bac34e366a95c17322b5b873d3731e34ddef8d14c8e9'

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
