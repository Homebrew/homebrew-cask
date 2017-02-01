cask 'pycharm-ce' do
  version '2016.3.2'
  sha256 '672b6991bde38fb3693ab88055eb93fab25e7304eb4e52216177c7545f1fe144'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release',
          checkpoint: 'f38dfa4fce2d630b3ac77b3f5c250262ee739dde5723576361db9cab8d424c44'
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true
  conflicts_with cask: 'pycharm-ce-eap'

  app 'PyCharm CE.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
              ]
end
