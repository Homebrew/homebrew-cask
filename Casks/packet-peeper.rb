cask :v1 => 'packet-peeper' do
  version '2014-06-15'
  sha256 'b562a9eaf38d6e668135505799829588b212d65270d3d24bff93a9b3128a0c44'

  # bitbucket is the official download host per the vendor homepage
  url "https://bitbucket.org/choll/packetpeeper/downloads/PacketPeeper_#{version}.dmg"
  name 'Packet Peeper'
  homepage 'http://packetpeeper.org/'
  license :gpl

  app 'Packet Peeper.app'
end
