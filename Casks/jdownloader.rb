class Jdownloader < Cask
  url 'http://installer.jdownloader.org/JDownloader09Setup_mac.dmg'
  homepage 'http://jdownloader.org/'
  version 'latest'
  no_checksum
  link 'JDownloader Installer.app'
  def caveats; <<-EOS.undent
    You need to run #{destination_path/'JDownloader Installer.app'} to actually install JDownloader
    EOS
  end
end
