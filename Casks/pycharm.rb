cask 'pycharm' do
  version '2016.1.4'
  sha256 '2f395a34f2e799eebd034a77fd895f20c1a2c2e8bfa9c85b07f848dc216192b4'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  conflicts_with cask: 'pycharm-eap'

  app 'PyCharm.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/.PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
              ]
end
