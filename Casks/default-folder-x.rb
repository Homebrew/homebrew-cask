cask :v1 => 'default-folder-x' do
  version '4.6.13'
  sha256 'bc33783b31ff0f6f38f489be03470ac1566eb8161dbf57f1670c5a0842fcf38d'

  url "http://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  homepage 'http://www.stclairsoft.com/DefaultFolderX'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'Default Folder X Installer.app'

  zap :delete => [
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.favorites.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.plist',
                  '~/Library/Preferences/com.stclairsoft.DefaultFolderX.settings.plist',
                 ]
end
