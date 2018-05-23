cask 'folx' do
  version '5.4.13714'
  sha256 'd5bdeee601d647c3171806404d7f7204c5d99cdc3ac4fa3cb3ec2f29a8d1623f'

  url "https://cdn.eltima.com/download/folx-updater/downloader_mac_#{version}.dmg"
  appcast 'https://cdn.eltima.com/download/folx-updater/folx.xml',
          checkpoint: '1e422ddd6e03809c293e0cd98d6b2a2e8a1e544fc3334310bc3a0729eebbb2bf'
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
