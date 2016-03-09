cask 'pycharm-community-edition' do
  version '5.0.4'
  sha256 '64128ad1e76375ec625fc27d2c270527ef4959978bb6a60f87ad54044075682e'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm Community Edition'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :apache

  app 'PyCharm CE.app'

  zap delete: [
                "~/.PyCharm#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.PyCharm.plist',
                "~/Library/Preferences/PyCharm#{version.major_minor.no_dots}",
                "~/Library/Application Support/PyCharm#{version.major_minor.no_dots}",
                "~/Library/Caches/PyCharm#{version.major_minor.no_dots}",
                "~/Library/Logs/PyCharm#{version.major_minor.no_dots}",
              ]
end
