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
    version '3.7.3'
    sha256 'd3074fe0fb57bef70a77c6630071845800dde2eebeaa28e01673ee2a749668f3'
    url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  end

  appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
          checkpoint: 'd6f25ded31a523078e1e1b6d41c3e92e7132bf56f6d1475b0a0ad03c3acdf8e0'
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
