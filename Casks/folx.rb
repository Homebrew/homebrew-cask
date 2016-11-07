cask 'folx' do
  version '5.1.13629'
  sha256 '3d2c9c7c80646b592bc8b6f2b012820661b57772d26c462a3ee71a9ac2f1e7fa'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: '73d28f32ff31be0564afd2a0b26d2f2dcba3a66a623843802458acacb925c9a4'
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
