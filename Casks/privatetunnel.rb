cask 'privatetunnel' do
  version '2.8'
  sha256 '0ae1175dabe078a6776d483c53b760ae599099d00f954de724581ff94718a9b4'

  # swupdate.openvpn.org/privatetunnel was verified as official when first introduced to the cask
  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com/home/'

  pkg 'PrivateTunnel.pkg'

  uninstall script: 'Uninstaller.command'
end
