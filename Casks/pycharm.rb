cask 'pycharm' do
  version '2016.1'
  sha256 'a07eab762373b5e119157eb3ffbfc6f8f7f754f80f01cf6249c997694c85cb1e'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.PyCharm.plist',
                "~/Library/Preferences/PyCharm#{version}",
                "~/Library/Application Support/PyCharm#{version}",
                "~/Library/Caches/PyCharm#{version}",
                "~/Library/Logs/PyCharm#{version}",
              ]
end
