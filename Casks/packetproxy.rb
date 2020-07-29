cask 'packetproxy' do
  version '2.1.5'
  sha256 '3deacdd72c1fb252239bf8c6935328ff271f62a3a2607e7ea4a33523d08b3116'

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  appcast 'https://github.com/DeNA/PacketProxy/releases.atom'
  name 'PacketProxy'
  homepage 'https://github.com/DeNA/PacketProxy'

  app 'PacketProxy.app'
end
