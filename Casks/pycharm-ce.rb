cask 'pycharm-ce' do
  version '2016.3.3,163.15188.4'
  sha256 'a088b656e3e493d865512511873a7b8eec8621456c81cad500b95b5c9cc862f9'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release',
          checkpoint: 'edf6e42b3494eb878c933b30495c9cffaf2e668fc21d9b11d922e0801401a561'
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true
  conflicts_with cask: 'pycharm-ce-eap'

  app 'PyCharm CE.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharmCE#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharmCE#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharmCE#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.pycharm.savedState',
              ]
end
