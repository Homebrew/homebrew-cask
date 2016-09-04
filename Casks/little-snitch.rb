cask 'little-snitch' do
  version '3.6.4'
  sha256 '143070b3d8fd7370aa9c7881d3239efe33f05f4d4413a46e22988dd64f5b5223'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
          checkpoint: 'f66b1e72e3c1a7d245b5748579656eb0deabbc73cecf355a6c0cc901305b4dab'
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
