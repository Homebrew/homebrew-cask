cask 'folx' do
  version '5.2.1.13690'
  sha256 'f00214b419756505410fefcf312c7d2fc2f81ed8e4ba134918c22232d23af1bd'

  url "https://cdn.eltima.com/download/folx-updater/downloader_mac_#{version}.dmg"
  appcast 'https://cdn.eltima.com/download/folx-updater/folx.xml',
          checkpoint: 'f59ab26d33f3fa694a1d9d8898d19622cb2c6486b714e959e83156f8b7461dda'
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
