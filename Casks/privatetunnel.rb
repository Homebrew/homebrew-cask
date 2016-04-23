cask 'privatetunnel' do
  version '2.6'
  sha256 'a71e30cf59bbbb0ef95f5ce8099ac3f758cab8b9bc3d8727596df4a635efeb5b'

  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com'
  license :gratis

  pkg 'PrivateTunnel.mpkg'

  uninstall script: 'Uninstaller.command'
end
