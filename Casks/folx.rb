cask 'folx' do
  version '5.3.13709'
  sha256 '3bfb5749ab2d774c8ec3224b19cdc8195dac566e629a9680382822833ec18142'

  url "https://cdn.eltima.com/download/folx-updater/downloader_mac_#{version}.dmg"
  appcast 'https://cdn.eltima.com/download/folx-updater/folx.xml',
          checkpoint: '6aa8d8637d4e854dd8059a92f441986bd6e625365f7c218446429dcea9472bc8'
  name 'Folx'
  homepage 'https://mac.eltima.com/download-manager.html'

  auto_updates true

  app 'Folx.app'

  zap trash: [
               '~/Library/Application Support/Eltima Software/Folx3',
               '~/Library/Caches/com.eltima.Folx3',
               '~/Library/Internet Plug-Ins/Folx3Plugin.plugin',
               '~/Library/Logs/Folx.log',
               '~/Library/Logs/Folx3.log',
               '~/Library/Preferences/com.eltima.Folx3.plist',
               '~/Library/Preferences/com.eltima.FolxAgent.plist',
               '~/Library/Saved Application State/com.eltima.Folx3.savedState',
             ]
end
