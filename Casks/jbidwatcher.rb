cask :v1 => 'jbidwatcher' do
  version '2.5.6'
  sha256 '659de073d9e0d71fa86e21db1524b7df57b36ff7826600a01ed93da6df5f5c9f'

  url "https://www.jbidwatcher.com/download/JBidwatcher-#{version}.dmg"
  name 'JBidwatcher'
  appcast 'https://www.jbidwatcher.com/sparkle/updates.xml',
          :sha256 => 'aa8cc693e2f0047a2214f990d5f418f026acf473dcb1f0f76204f7fee730077b'
  homepage 'http://www.jbidwatcher.com'
  license :cc

  app 'JBidwatcher.app'
end
