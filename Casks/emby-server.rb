cask 'emby-server' do
  version :latest
  sha256 :no_check

  # github.com/MediaBrowser/MediaBrowser.Releases was verified as official when first introduced to the cask
  url 'https://github.com/MediaBrowser/MediaBrowser.Releases/raw/master/Server/Emby.Server.Mac.pkg'
  name 'Emby Server'
  homepage 'https://emby.media/'

  pkg 'Emby.Server.Mac.pkg'

  uninstall pkgutil: 'com.MediaBrowser.MediaBrowser.Server.Mac'
end
