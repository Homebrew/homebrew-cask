cask 'macupdater' do
  version '1.4.8'
  sha256 'bec108e03a4b9a03b1bd61ebabd36f1ef5377530449d24fc9dd26de361a21987'

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
