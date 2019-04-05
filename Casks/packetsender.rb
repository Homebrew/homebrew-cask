cask 'packetsender' do
  version '6.1.25'
  sha256 '9d4d608d3f98f4f66afe6148d1a1e4becd41c08b11432211b33b98a8c65ad6a3'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
