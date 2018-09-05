cask 'gom-player' do
  version :latest
  sha256 :no_check

  url 'https://app.gomtv.com/GOMForMac/gom.pkg'
  name 'GOM Player'
  name '곰플레이어'
  homepage 'http://gom2.gomtv.com/release/gom_player_mac.htm'

  pkg 'gom.pkg'

  uninstall pkgutil: 'Gretech.com.gomPlayer.*'
end
