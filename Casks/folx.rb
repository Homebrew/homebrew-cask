cask 'folx' do
  version '5.2.1.13688'
  sha256 'e5e4b4c8d07a193b546c3b10e35b5eb0d9ac7933ff39c449b13beba0594e8412'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: 'b6f25be10612b6095b4375674bba50cf93d836a841627bbe0ae2ad060597399f'
  name 'Folx'
  homepage 'https://mac.eltima.com/download-manager.html'

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
