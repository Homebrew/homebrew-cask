cask 'default-folder-x' do
  version '5.4.1'
  sha256 '60b2866ac742ec83d87d881a2112213d5a791945c2954e740a9e7bfbb6b4583e'

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX5'
  name 'Default Folder X'
  homepage 'https://www.stclairsoft.com/DefaultFolderX/'

  auto_updates true

  app 'Default Folder X.app'

  zap trash: [
               '~/Library/Application Support/.com.stclairsoft',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx5.sfl*',
               '~/Library/Application Support/com.stclairsoft.DefaultFolderX5',
               '~/Library/Caches/com.stclairsoft.DefaultFolderX5',
               '~/Library/Preferences/com.stclairsoft.DefaultFolderX5.plist',
             ]
end
