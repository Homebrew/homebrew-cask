cask 'folx' do
  version '5.1.13639'
  sha256 'f3194a00cda2381ad99c80765b7502f1d0fd189be67ed705a6e9c18d1d59413b'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: 'c7b8ebe7f23a5df1866611a49bac2d3214af842964f7e2c072c43c05cbb4d010'
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
