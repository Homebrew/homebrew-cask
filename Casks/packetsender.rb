cask 'packetsender' do
  version '5.7.52'
  sha256 'abd6a9994c35207918749b642ea743356083454c059c3774c23ce4e37f36d5cd'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
