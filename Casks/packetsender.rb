cask 'packetsender' do
  version '5.3,2017-02-18'
  sha256 '28f4f46fc0e8ec7584660376089f4f07f1626fac6775a954fc17e28154127418'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version.before_comma}/PacketSender_v#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom',
          checkpoint: 'b035e6238a22dae4ef736bc40315fc2cd6b81e5ac4ee1a5f02f3debdf41325b5'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
