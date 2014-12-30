cask :v1 => 'mediabrowser-server' do
  version :latest
  sha256 :no_check

  url 'https://github.com/MediaBrowser/MediaBrowser.Releases/raw/master/Server/MediaBrowser.Server.Mac.pkg'
  homepage 'http://mediabrowser.tv/'
  license :unknown

  pkg 'MediaBrowser.Server.Mac.pkg'

  uninstall :pkgutil => 'com.MediaBrowser.MediaBrowser.Server.Mac'
end
