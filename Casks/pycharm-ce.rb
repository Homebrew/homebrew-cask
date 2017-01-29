cask 'pycharm-ce' do
  version '2016.3.2'
  sha256 '672b6991bde38fb3693ab88055eb93fab25e7304eb4e52216177c7545f1fe144'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm/'

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
