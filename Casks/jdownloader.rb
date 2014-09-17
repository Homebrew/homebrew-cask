class Jdownloader < Cask
  version :latest
  sha256 :no_check

  url 'http://installer.jdownloader.org/JDownloader09Setup_mac.dmg'
  homepage 'http://jdownloader.org/'

  caskroom_only true
  caveats do
    manual_installer 'JDownloader Installer.app'
  end
end
