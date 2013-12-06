class DefaultFolderX < Cask
  url 'https://stclairsoft.s3.amazonaws.com/DefaultFolderX-4.6.1.dmg'
  homepage 'http://www.stclairsoft.com/DefaultFolderX'
  version '4.6.1'
  sha1 'e18306fa47d1d04717b206745de83cfb7e112002'
  link 'Default Folder X Installer.app'

  def caveats; <<-EOS.undent
    You need to run #{destination_path/'Default Folder X Installer.app'} to actually install Default Folder X
    EOS
  end
end
