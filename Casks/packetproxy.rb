cask 'packetproxy' do
  version '2.1.1'
  sha256 'e79dd546f742618e6e93d7f4fc6a129aabdf3266db49a64cbc6bb45cc848a182'

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  appcast 'https://github.com/DeNA/PacketProxy/releases.atom'
  name 'PacketProxy'
  homepage 'https://github.com/DeNA/PacketProxy'

  app 'PacketProxy.app'
end
