cask :v1 => 'onlive-client' do
  version :latest
  sha256 :no_check

  url 'https://games.onlive.com/client/mac.pkg'
  homepage 'http://games.onlive.com'
  license :unknown

  pkg 'mac.pkg'

  uninstall :pkgutil => 'com.onlive.OnLiveClient.pkg'
end
