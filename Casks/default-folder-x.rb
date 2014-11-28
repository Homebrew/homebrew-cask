cask :v1 => 'default-folder-x' do
  version '4.6.10'
  sha256 '95752cf84ffd5f8090397ba85689ebaa409b205de9d15a4af4b0e5eae8626d59'

  url "http://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  homepage 'http://www.stclairsoft.com/DefaultFolderX'
  license :unknown

  installer :manual => 'Default Folder X Installer.app'

  zap :delete => [
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.favorites.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.settings.plist',
                 ]
end
