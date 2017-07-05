cask 'little-snitch' do
  version '4.0'
  sha256 '5d3b823eb55204055ac53c2d03a1783c4c42214079ee8ec085a4aaca0d052a60'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
          checkpoint: 'ffdec57721163f55004abc8201d47b9393ecfbc1b7ae7077e60c24db97c12e6b'
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/index.html'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  installer manual: 'Little Snitch Installer.app'

  zap delete: [
                '/Library/Application Support/Objective Development/Little Snitch',
                '~/Library/Application Support/Little Snitch',
                '~/Library/Caches/at.obdev.LittleSnitchAgent',
                '~/Library/Caches/at.obdev.LittleSnitchConfiguration',
                '~/Library/Caches/at.obdev.LittleSnitchSoftwareUpdate',
                '~/Library/Caches/com.apple.helpd/Generated/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Logs/Little Snitch Agent.log',
                '~/Library/Logs/Little Snitch Installer.log',
                '~/Library/Logs/Little Snitch Network Monitor.log',
                '~/Library/Preferences/at.obdev.LittleSnitchAgent.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchConfiguration.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchInstaller.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchSoftwareUpdate.plist',
                '~/Library/Saved Application State/at.obdev.LittleSnitchInstaller.savedState',
              ],
      rmdir:  '/Library/Application Support/Objective Development'

  caveats do
    reboot
  end
end
