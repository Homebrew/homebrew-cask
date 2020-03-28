cask 'packetproxy' do
  version '2.1.3'
  sha256 '60dbffdd1655e938529c0ca4c0a89076c49ccc45e481f41369ed2bd67055436d'

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  appcast 'https://github.com/DeNA/PacketProxy/releases.atom'
  name 'PacketProxy'
  homepage 'https://github.com/DeNA/PacketProxy'

  app 'PacketProxy.app'
end
