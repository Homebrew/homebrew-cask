cask 'packetsender' do
  version '5.4.1,2017-08-08'
  sha256 '63c6886bb85e11ffaa0436d56fc0f07ef24b4b90efab213e2945905f92db612d'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version.before_comma}/PacketSender_v#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom',
          checkpoint: '2bf02ae63dae040084a67a6a3554177a8d41b016e2e939621bfd684a8861d2a7'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
