cask 'default-folder-x' do
  version '5.1.5'
  sha256 'b50021ac99e1ea2390570ab28ec8f9f2d4c5deb8e7200a9bee0ea07173f9a200'

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name 'Default Folder X'
  homepage 'https://www.stclairsoft.com/DefaultFolderX/'

  app 'Default Folder X.app'

  zap delete: [
                '~/Library/Application Support/.com.stclairsoft',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx5.sfl',
                '~/Library/Application Support/com.stclairsoft.DefaultFolderX5',
                '~/Library/Caches/com.stclairsoft.DefaultFolderX5',
                '~/Library/Preferences/com.stclairsoft.DefaultFolderX5.plist',
              ]
end
