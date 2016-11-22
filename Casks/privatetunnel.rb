cask 'privatetunnel' do
  version '2.7'
  sha256 '64ff83847f41cbdc857f616bff03477292c30e2283ce9617a59bb4bbba1058b4'

  # swupdate.openvpn.org/privatetunnel was verified as official when first introduced to the cask
  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com'

  pkg 'PrivateTunnel.pkg'

  uninstall script: 'Uninstaller.command'
end
