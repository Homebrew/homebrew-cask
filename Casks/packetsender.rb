cask 'packetsender' do
  version '5.8.6'
  sha256 '3dc8514d9bf0dd4957fab5f852b76d9b56703090d7a724c7f765db67c1c458fb'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v5.8.5/PacketSender_v#{version}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
