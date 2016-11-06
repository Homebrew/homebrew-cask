cask 'packetsender' do
  version '5.1,2016-10-13'
  sha256 '9ef8ee82b7d9a7987430a45e483b676db2c0a4ada1bb59b033538dbd1c9da520'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version.before_comma}-sierra1/PacketSender_#{version.after_comma}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom',
          checkpoint: '23639a7e3b2135f56c03a411d19ac81165cf4371dcc9e684d7ea644f83be3d86'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
