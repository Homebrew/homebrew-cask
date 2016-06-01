cask 'privatetunnel' do
  version '2.6'
  sha256 '8a294d0bff57e0b5df41d613e1104a6f39483f3440dccd080022249f0b698460'

  # swupdate.openvpn.org/privatetunnel was verified as official when first introduced to the cask
  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com'
  license :gratis

  pkg 'PrivateTunnel.pkg'

  uninstall script: 'Uninstaller.command'
end
