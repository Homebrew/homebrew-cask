cask 'default-folder-x' do
  if MacOS.release <= :leopard
    version '4.5.12'
    sha256 'fc2225a106d0c26a4373d92e3a4b04483830506d22ec772b432a705a634c49ed'
  elsif MacOS.release <= :mavericks
    version '4.7.4'
    sha256 '96cd688a099ec0ca3340d2e43d60f51513a2186a296346e7110c296ee00828e6'
  else
    version '5.0'
    sha256 'bb563781897015d027acac26a17f30e0250fba63a4016676ee98273d460c33cd'
  end

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name 'Default Folder X'
  homepage 'https://www.stclairsoft.com/DefaultFolderX'
  license :commercial

  if MacOS.release <= :mavericks
    installer manual: 'Default Folder X Installer.app'
  else
    app 'Default Folder X.app'
  end

  postflight do
    suppress_move_to_applications
  end

  if MacOS.release <= :mavericks
    zap delete: [
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.favorites.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.settings.plist',
                ]
  else
    zap delete: [
                  '~/Library/Application Support/.com.stclairsoft',
                  '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx5.sfl',
                  '~/Library/Application Support/com.stclairsoft.DefaultFolderX5',
                  '~/Library/Caches/com.stclairsoft.DefaultFolderX5',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX5.plist',
                ]
  end
end
