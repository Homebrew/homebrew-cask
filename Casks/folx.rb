cask 'folx' do
  version '5.1,13655'
  sha256 '2a09300ace2bf3618ba2416f7776d38d43d86852e0056138f8b4fae8f471e541'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: 'effce6040b7b2ac3bc37bec3b44c70f6b7d3107423c86822e92746d22e7c6474'
  name 'Folx'
  homepage 'http://mac.eltima.com/download-manager.html'

  auto_updates true

  app 'Folx.app'

  zap delete: [
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
