cask 'pycharm' do
  version '5.0.4'
  sha256 'b6ce56e16077247f4e236a1e628c1d2498583b95ab6a5783857e789ffa219200'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'

  zap delete: [
                '~/.PyCharm50',
                '~/Library/Preferences/com.jetbrains.PyCharm.plist',
                '~/Library/Preferences/PyCharm50',
                '~/Library/Application Support/PyCharm50',
                '~/Library/Caches/PyCharm50',
                '~/Library/Logs/PyCharm50',
  ]
end
