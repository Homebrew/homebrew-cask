cask 'pycharm' do
  version '2016.3.2'
  sha256 '20436a4faffe5d8251c3a41c59f0aa10548719a10f7052ccbf0ff236e5237838'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release',
          checkpoint: '07878d7ff3f6c98608f0c7819c5b4ead2f1a6ac06cd57d60444f3b77e4015fab'
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'

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
