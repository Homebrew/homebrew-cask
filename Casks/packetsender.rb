cask 'packetsender' do
  version '6.0.19'
  sha256 'def6cc2a43c22506f0dbe53690e198bbb47abad862b5b0954b5a6822381cbc56'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
