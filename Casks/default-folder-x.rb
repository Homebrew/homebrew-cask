cask 'default-folder-x' do
  version '5.4.3'
  sha256 'cab1129dd3a44409e3755c1e5c0e0055312adddbf6750699fffc2da56f34fb01'

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
