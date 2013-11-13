class DefaultFolderX < Cask
  url 'http://stclairsoft.s3.amazonaws.com/DefaultFolderX-4.5.12.dmg'
  homepage 'http://www.stclairsoft.com/DefaultFolderX'
  version '4.5.12'
  sha1 '7cee468089c7244ca46e5ceb230a21cf3bf7afa9'
  link 'Default Folder X Installer.app'

  def caveats; <<-EOS.undent
    You need to run #{destination_path/'Default Folder X Installer.app'} to actually install Default Folder X
    EOS
  end
end
