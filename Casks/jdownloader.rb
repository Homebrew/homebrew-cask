class Jdownloader < Cask
  url 'http://installer.jdownloader.org/JDownloader09Setup_mac.dmg'
  homepage 'http://jdownloader.org/'
  version 'latest'
  no_checksum
  caskroom_only true
  caveats do
    manual_installer 'JDownloader Installer.app'
  end
end
