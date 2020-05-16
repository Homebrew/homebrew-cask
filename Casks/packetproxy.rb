cask 'packetproxy' do
  version '2.1.4'
  sha256 '82087d0f0aee7420887c3e4a2da0f86ea522ff38ca064518ad31f4dbd0e0fb81'

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  appcast 'https://github.com/DeNA/PacketProxy/releases.atom'
  name 'PacketProxy'
  homepage 'https://github.com/DeNA/PacketProxy'

  app 'PacketProxy.app'
end
