cask 'privatetunnel' do
  version '2.8'
  sha256 '924c19ecbc7794e5ca09a79be21e04a8b7733ecba57ff0d048335218371c56c5'

  # swupdate.openvpn.org/privatetunnel was verified as official when first introduced to the cask
  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com/home/'

  pkg 'PrivateTunnel.pkg'

  uninstall script: 'Uninstaller.command'
end
