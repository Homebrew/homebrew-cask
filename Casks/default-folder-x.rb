cask :v1 => 'default-folder-x' do
  if MacOS.release <= :leopard
    version '4.5.12'
    sha256 'fc2225a106d0c26a4373d92e3a4b04483830506d22ec772b432a705a634c49ed'
  else
    version '4.7.3'
    sha256 'c04cd2124b1a1085f6600ac984831e55a40d082cdae1d15dc2f7a6e40eb8c56c'
  end

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
