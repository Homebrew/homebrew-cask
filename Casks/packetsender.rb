cask 'packetsender' do
  version '5.6.2'
  sha256 '9ad99a69466e741858a2a4276a16537b01f87c3e4accbb4316d5361b1ed43564'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom',
          checkpoint: '242c7a7b8d23e1e0fc76176852b91a491445e26b99aff872c0a0b0034566befe'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
