cask 'folx' do
  version '5.8.13820'
  sha256 '07a436dff8c226a1af855e73ac44e9b7b1d5c57940e4ca808e38d4cce240c991'

  url 'https://cdn.eltima.com/download/downloader_mac.dmg'
  appcast 'https://cdn.eltima.com/download/folx-updater/folx.xml',
          configuration: version.major_minor
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
