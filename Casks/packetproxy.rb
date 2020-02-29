cask 'packetproxy' do
  version '2.1.2'
  sha256 '3d408bf5b1cc382716c3e3222f2ce9f5f76d1473a82e91a43fc72a233bbd83bf'

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  appcast 'https://github.com/DeNA/PacketProxy/releases.atom'
  name 'PacketProxy'
  homepage 'https://github.com/DeNA/PacketProxy'

  app 'PacketProxy.app'
end
