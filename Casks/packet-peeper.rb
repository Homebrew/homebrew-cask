cask :v1 => 'packet-peeper' do
  version '2014-05-11'
  sha256 'ed7d287b2dcd42ec9658c0623d97146821e386f59a67c0759252ea7d7e3f2ba3'

  # bitbucket is the official download host per the vendor homepage
  url "https://bitbucket.org/choll/packetpeeper/downloads/PacketPeeper_#{version}.dmg"
  homepage 'http://packetpeeper.org/'
  license :oss

  app 'Packet Peeper.app'
end
