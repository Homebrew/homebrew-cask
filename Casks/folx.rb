cask 'folx' do
  version '5.16.13940'
  sha256 '746235de6bf236448fd59a26b0195a40efb5ad7933826d2c611c79eb30c89d6d'

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
