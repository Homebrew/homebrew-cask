cask 'little-snitch' do
  version '4.0.3'
  sha256 'af93abb070cbac96cdda7e150668115c34447f2779dc707f8a79879c60f4c3bf'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
          checkpoint: 'ca02c011efa7e8899f3a817d31024ecfdc8daf0d11c53c2feef66a95acdfc88b'
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/index.html'

  auto_updates true
  depends_on macos: '>= :el_capitan'
  container type: :naked

  installer manual: "LittleSnitch-#{version}.dmg/Little Snitch Installer.app"

  uninstall launchctl: [
                         'at.obdev.LittleSnitchUIAgent',
                         'at.obdev.LittleSnitchHelper',
                         'at.obdev.littlesnitchd',
                       ]

  zap delete: [
                '/Library/Application Support/Objective Development/Little Snitch',
                '/Library/Caches/at.obdev.LittleSnitchConfiguration',
                '/Library/Little Snitch',
                '/Library/Logs/LittleSnitchDaemon.log',
                '~/Library/Caches/at.obdev.LittleSnitchAgent',
                '~/Library/Caches/at.obdev.LittleSnitchConfiguration',
                '~/Library/Caches/at.obdev.LittleSnitchHelper',
                '~/Library/Caches/at.obdev.LittleSnitchSoftwareUpdate',
                '~/Library/Caches/com.apple.helpd/Generated/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Logs/Little Snitch Agent.log',
                '~/Library/Logs/Little Snitch Helper.log',
                '~/Library/Logs/Little Snitch Installer.log',
                '~/Library/Logs/Little Snitch Network Monitor.log',
                '~/Library/Saved Application State/at.obdev.LittleSnitchInstaller.savedState',
                '~/Library/WebKit/at.obdev.LittleSnitchConfiguration',
                # These kext's should not be uninstalled by Cask
                '/Library/Extensions/LittleSnitch.kext',
                '/Library/StagedExtensions/Library/Extensions/LittleSnitch.kext',
              ],
      trash:  [
                '~/Library/Application Support/Little Snitch',
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
