cask :v1 => 'default-folder-x' do
  version '4.6.14'
  sha256 '621fe0042ed44da7eab369471ae345e19432cf3a5c70cf0290e567ce805f6b99'

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name 'Default Folder X'
  homepage 'https://www.stclairsoft.com/DefaultFolderX'
  license :commercial

  installer :manual => 'Default Folder X Installer.app'

  zap :delete => [
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.favorites.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.settings.plist',
                 ]
end
