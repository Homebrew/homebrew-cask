cask 'folx' do
  version '5.9.13840'
  sha256 'fefafe56c909da8674d43fd9077e7a4d6b7024c1cb0521351017537c2014ed18'

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
