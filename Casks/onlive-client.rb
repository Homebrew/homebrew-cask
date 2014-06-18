class OnliveClient < Cask
  url 'https://games.onlive.com/client/mac.pkg'
  homepage 'http://games.onlive.com'
  version 'latest'
  sha256 :no_check
  install 'mac.pkg'
  uninstall :pkgutil => 'com.onlive.OnLiveClient.pkg'
end
