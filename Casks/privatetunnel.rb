cask 'privatetunnel' do
  version '2.5'
  sha256 '9bd6f9cbba603ed41663228c6d00d31fce656b941a6c139a7dbcae40c822528b'

  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com'
  license :gratis

  pkg 'PrivateTunnel.mpkg'

  uninstall script: 'Uninstaller.command'
end
