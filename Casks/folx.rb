cask 'folx' do
  version '5.7.13779'
  sha256 'ecaedce7876e9df224e2f666e364e50529b85c7535f6188a95881722849c7d90'

  url 'https://cdn.eltima.com/download/downloader_mac.dmg'
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
