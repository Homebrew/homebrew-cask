cask 'default-folder-x' do
  version '5.1.3'
  sha256 '2770531760efb3e8cc8ea58cc856b126fde117b54d2484470cca86dbc9516654'

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name 'Default Folder X'
  homepage 'https://www.stclairsoft.com/DefaultFolderX/'

  app 'Default Folder X.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/.com.stclairsoft',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx5.sfl',
                '~/Library/Application Support/com.stclairsoft.DefaultFolderX5',
                '~/Library/Caches/com.stclairsoft.DefaultFolderX5',
                '~/Library/Preferences/com.stclairsoft.DefaultFolderX5.plist',
              ]
end
