cask 'macupdater' do
  version '1.4.6'
  sha256 '2a408b7476b2bd25e2dbaeaad308c7af0f136aab43b7c49609f74cb1d2ced2ba'

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
