class DefaultFolderX < Cask
  url 'https://stclairsoft.s3.amazonaws.com/DefaultFolderX-4.6.2.dmg'
  homepage 'http://www.stclairsoft.com/DefaultFolderX'
  version '4.6.2'
  sha256 '57ef08bfeab36375fb5d9b0b1c77b12e0e4ac56f8f5896d6926e52d82732cbe0'
  link 'Default Folder X Installer.app'
  caveats do
    manual_installer 'Default Folder X Installer.app'
  end
end
