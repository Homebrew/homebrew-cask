cask 'folx' do
  version '5.1.13671'
  sha256 '45535464ba360fb7625bd6eb6736ba68ef7daed37833ef62c8170b16d511dd97'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: 'de10550065e2316573a16d23e031b6f4dd59ea655033922216ac8ab4910b0c5e'
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
