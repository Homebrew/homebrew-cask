class DefaultFolderX < Cask
  version '4.6.8'
  sha256 '57ef08bfeab36375fb5d9b0b1c77b12e0e4ac56f8f5896d6926e52d82732cbe0'

  url 'http://www.stclairsoft.com/download/DefaultFolderX-4.6.8.dmg'
  homepage 'http://www.stclairsoft.com/DefaultFolderX'

  caskroom_only true
  caveats do
    manual_installer 'Default Folder X Installer.app'
  end
end
