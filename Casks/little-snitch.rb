cask 'little-snitch' do
  version '4.0.2'
  sha256 'e83c33f26f4e963b47315614f2094a5d46d96aacf5bb3983b4e786e98fa76fad'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
          checkpoint: 'd6aaae04863ad879ac7e27a4897a2d4b278e29606a4e0241567765ba4b0f5e75'
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/index.html'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  installer manual: 'Little Snitch Installer.app'

  uninstall launchctl: [
                         'at.obdev.LittleSnitchUIAgent',
                         'at.obdev.littlesnitchd',
                       ]

  zap delete: [
                '/Library/Application Support/Objective Development/Little Snitch',
                '/Library/Logs/LittleSnitchDaemon.log',
                '~/Library/Application Support/Little Snitch',
                '~/Library/Caches/at.obdev.LittleSnitchAgent',
                '~/Library/Caches/at.obdev.LittleSnitchConfiguration',
                '~/Library/Caches/at.obdev.LittleSnitchSoftwareUpdate',
                '~/Library/Caches/com.apple.helpd/Generated/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Logs/Little Snitch Agent.log',
                '~/Library/Logs/Little Snitch Installer.log',
                '~/Library/Logs/Little Snitch Network Monitor.log',
                '~/Library/Saved Application State/at.obdev.LittleSnitchInstaller.savedState',
              ],
      trash:  [
                '~/Library/Preferences/at.obdev.LittleSnitchAgent.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchConfiguration.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchInstaller.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchSoftwareUpdate.plist',
              ],
      rmdir:  '/Library/Application Support/Objective Development'

  caveats do
    reboot
  end
end
