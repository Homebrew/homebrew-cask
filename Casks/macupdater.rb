cask 'macupdater' do
  version '1.4.5'
  sha256 '76ee48d25d86e53db370516f92c0b96ca29b9899b3bda60a3b8023d4158d7ad9'

  url "https://www.corecode.io/downloads/macupdater_#{version}.zip"
  appcast 'https://macupdater.net/macupdater/macupdater.xml'
  name 'MacUpdater'
  homepage 'https://www.corecode.io/macupdater/index.html'

  app 'MacUpdater.app'

  zap trash: [
               '~/Library/Application Support/MacUpdater/',
               '~/Library/Caches/com.corecode.MacUpdater',
               '~/Library/Containers/com.corecode.MacUpdaterLaunchHelper',
               '~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper/',
               '~/Library/Preferences/com.corecode.MacUpdater.plist',
             ]
end
