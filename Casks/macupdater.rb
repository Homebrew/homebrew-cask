cask 'macupdater' do
  version '1.5.3'
  sha256 '26f25428cf772363e78390210bd73d6fc10577a23a1877187f56c2f934895b71'

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
  appcast 'https://www.corecode.io/macupdater/macupdater.xml'
  name 'MacUpdater'
  homepage 'https://www.corecode.io/macupdater/index.html'

  auto_updates true

  app 'MacUpdater.app'
  binary "#{appdir}/MacUpdater.app/Contents/Resources/macupdater_client"

  zap trash: [
               '~/Library/Application Support/MacUpdater/',
               '~/Library/Caches/com.corecode.MacUpdater',
               '~/Library/Containers/com.corecode.MacUpdaterLaunchHelper',
               '~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper/',
               '~/Library/Preferences/com.corecode.MacUpdater.plist',
             ]
end
