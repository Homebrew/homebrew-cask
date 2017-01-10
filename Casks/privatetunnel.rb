cask 'privatetunnel' do
  version '2.8'
  sha256 '8abc331c8ab9d6805328bbc53f93f3bf9c94efbd8e609606ecbee9006851fbae'

  # swupdate.openvpn.org/privatetunnel was verified as official when first introduced to the cask
  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com/home/'

  pkg 'PrivateTunnel.pkg'

  uninstall script: 'Uninstaller.command'
end
