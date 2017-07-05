cask 'little-snitch' do
  if MacOS.version <= :mountain_lion
    version '3.3.4'
    sha256 '19dfcd33594fc14be321c3f54651059029b73f715158e0498ba01ceb69bf6c4a'
    url "https://www.obdev.at/downloads/littlesnitch/legacy/LittleSnitch-#{version}.dmg"
  elsif MacOS.version <= :mavericks
    version '3.6.4'
    sha256 '143070b3d8fd7370aa9c7881d3239efe33f05f4d4413a46e22988dd64f5b5223'
    url "https://www.obdev.at/downloads/littlesnitch/legacy/LittleSnitch-#{version}.dmg"
  else
    version '4.0'
    sha256 '5d3b823eb55204055ac53c2d03a1783c4c42214079ee8ec085a4aaca0d052a60'
    url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  end

  appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
          checkpoint: 'ffdec57721163f55004abc8201d47b9393ecfbc1b7ae7077e60c24db97c12e6b'
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/index.html'

  auto_updates true

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
      rmdir:  [
                '/Library/Application Support/Objective Development',
              ]

  caveats do
    reboot
  end
end
