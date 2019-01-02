cask 'macupdater' do
  version '1.4.1'
  sha256 'ebec48c16e1c7d953252eb8e36d33159c0c1e73a87ebc40015aa6fe2d5ac0ca0'

  url "https://www.corecode.io/downloads/macupdater_#{version}.zip"
  appcast 'https://www.corecode.io/macupdater/macupdater.xml'
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
