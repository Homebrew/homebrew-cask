class Jdownloader < Cask
  url 'http://installer.jdownloader.org/JDownloader09Setup_mac.dmg'
  homepage 'http://jdownloader.org/'
  version 'latest'
  no_checksum
  link 'JDownloader Installer.app'
  caveats do
    manual_installer 'JDownloader Installer.app'
  end
end
