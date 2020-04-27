cask 'default-folder-x' do
  version '5.4.5'
  sha256 '3fe42a18f7b78b41b6ff1acc44328ffa80011a063dcad2dee4dc053be8812b54'

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
