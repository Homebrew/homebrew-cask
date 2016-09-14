cask 'little-snitch' do
  version '3.7'
  sha256 '5c44d853dc4178fb227abd3e8eee19ef1bf0d576f49b5b6a9a7eddf6ae7ea951'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
          checkpoint: 'eec25e526fc37ad3c828973eacfff88e7835a3b05dbc4f4332f62d7330072a83'
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/'
  license :commercial

  installer manual: 'Little Snitch Installer.app'

  zap delete: [
                '/Library/Application Support/Objective Development/Little Snitch',
                '~/Library/Application Support/Little Snitch',
                '~/Library/Preferences/at.obdev.LittleSnitchConfiguration.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchInstaller.plist',
              ],
      rmdir:  [
                '/Library/Application Support/Objective Development',
              ]
end
