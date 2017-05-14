cask 'packetsender' do
  version '5.3.1,2017-02-21'
  sha256 'de20dc2ef3ccf60823ff8a97461c30cd48f2cf1370c207531b4d6e4933b09c6a'

  # github.com/dannagle/PacketSender was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version.before_comma}/PacketSender_v#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  appcast 'https://github.com/dannagle/PacketSender/releases.atom',
          checkpoint: 'b7fde4b18d8cd19e6ac4846dd4a3364bc6c9aa71f1b64606a5ad5ca0a2e29282'
  name 'Packet Sender'
  homepage 'https://packetsender.com/'

  app 'PacketSender.app'
end
