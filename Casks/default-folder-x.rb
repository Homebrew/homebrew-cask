cask 'default-folder-x' do
  version '5.3.3'
  sha256 '1d8dfffcf272bc155db2d2da235a5fb05d1c682302f8da3ca6fccd2022766339'

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX5'
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
