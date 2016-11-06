cask 'packetsender' do
  version '5.1'
  sha256 '9ef8ee82b7d9a7987430a45e483b676db2c0a4ada1bb59b033538dbd1c9da520'

  # github.com/dannagle was verified as official when first introduced to the cask
  url 'https://github.com/dannagle/PacketSender/releases/download/v5.1-sierra1/PacketSender_2016-10-13.dmg'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
