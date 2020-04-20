cask 'packetsender' do
  version '6.2.3'
  sha256 '4a886b351ef7d30906e20d05ea002a6ae2308c28dd1246957bcaa361e054ee2b'

  # github.com/dannagle/PacketSender/ was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  depends_on macos: '>= :sierra'

  app 'PacketSender.app'
end
