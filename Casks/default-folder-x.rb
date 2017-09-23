cask 'default-folder-x' do
  version '5.1.6'
  sha256 'c9a201b8958276d7342ab9807f770f66b5afed65124519e2e1109ee386a530e4'

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
