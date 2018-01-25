cask 'default-folder-x' do
  version '5.2.1'
  sha256 '0d3ca1d226729069bece648ffbcaa76eab78495c3a52b9cdb14c8cad97d994bf'

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name 'Default Folder X'
  homepage 'https://www.stclairsoft.com/DefaultFolderX/'

  app 'Default Folder X.app'

  zap trash: [
               '~/Library/Application Support/.com.stclairsoft',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx5.sfl*',
               '~/Library/Application Support/com.stclairsoft.DefaultFolderX5',
               '~/Library/Caches/com.stclairsoft.DefaultFolderX5',
               '~/Library/Preferences/com.stclairsoft.DefaultFolderX5.plist',
             ]
end
