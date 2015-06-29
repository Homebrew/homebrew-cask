cask :v1 => 'default-folder-x' do
  version '4.7.2'
  sha256 '781c9de83cf9a218b026d451c2a9e87cbbc2d4b6cc33df3dc1825c6f74298be6'

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
