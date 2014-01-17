class DefaultFolderX < Cask
  url 'https://stclairsoft.s3.amazonaws.com/DefaultFolderX-4.6.2.dmg'
  homepage 'http://www.stclairsoft.com/DefaultFolderX'
  version '4.6.2'
  sha1 '64da17e2a863711a0959210546ffc2182b3e802a'
  link 'Default Folder X Installer.app'

  def caveats; <<-EOS.undent
    You need to run #{destination_path/'Default Folder X Installer.app'} to actually install Default Folder X
    EOS
  end
end
