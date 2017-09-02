cask 'packetsender' do
  version '5.4.2,2017-09-01'
  sha256 'b65428cda04eadcf956976fe30e9eb78e422c13602ff66f3134e7b6aa48fba7c'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version.before_comma}/PacketSender_v#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom',
          checkpoint: '272e1505776fff4d212eb4f3dd468fb595d3712973cd077e834f99f89baa4055'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
