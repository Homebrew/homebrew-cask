cask :v1 => 'jdownloader' do
  version :latest
  sha256 :no_check

  url 'http://installer.jdownloader.org/JDownloader09Setup_mac.dmg'
  homepage 'http://jdownloader.org/'
  license :unknown

  installer :manual => 'JDownloader Installer.app'
end
