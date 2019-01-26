cask 'default-folder-x' do
  version '5.3.3'
  sha256 '098f2641e052d8bcf0e774c3b3bc1440ec2f0b736dfb04e5c8aaf72822995c9f'

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
