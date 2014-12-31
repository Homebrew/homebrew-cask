cask :v1 => 'mediabrowser-server' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/MediaBrowser/MediaBrowser.Releases/raw/master/Server/MediaBrowser.Server.Mac.pkg'
  homepage 'http://mediabrowser.tv/'
  license :gpl

  pkg 'MediaBrowser.Server.Mac.pkg'

  uninstall :pkgutil => 'com.MediaBrowser.MediaBrowser.Server.Mac'
end
