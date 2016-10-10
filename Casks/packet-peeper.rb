cask 'packet-peeper' do
  version '2014-06-15'
  sha256 'b562a9eaf38d6e668135505799829588b212d65270d3d24bff93a9b3128a0c44'

  # bitbucket.org/choll/packetpeeper was verified as official when first introduced to the cask
  url "https://bitbucket.org/choll/packetpeeper/downloads/PacketPeeper_#{version}.dmg"
  name 'Packet Peeper'
  homepage 'http://packetpeeper.org/'

  app 'Packet Peeper.app'
end
