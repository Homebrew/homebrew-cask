cask 'folx' do
  version '5.5.13723'
  sha256 'b31285b8eeccf7ca7124bc21a962361f95e326ea99db147f86ce1a7b6293fc22'

  url "https://cdn.eltima.com/download/folx-updater/downloader_mac_#{version}.dmg"
  appcast 'https://cdn.eltima.com/download/folx-updater/folx.xml'
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
