cask 'folx' do
  version '5.9.13837'
  sha256 '0cb6ca263333a1c07796ded897804ea8737696a1b646c399d05e47524cf4d10b'

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
