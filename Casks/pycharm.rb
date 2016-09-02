cask 'pycharm' do
  version '2016.2.2'
  sha256 '33a3a046ec6743b41b5899c404ae7e6fb3a076fe6063afa4190170171bf23878'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  conflicts_with cask: 'pycharm-eap'

  app 'PyCharm.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
              ]
end
