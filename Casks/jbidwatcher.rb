cask 'jbidwatcher' do
  version '2.5.6'
  sha256 '659de073d9e0d71fa86e21db1524b7df57b36ff7826600a01ed93da6df5f5c9f'

  url "https://www.jbidwatcher.com/download/JBidwatcher-#{version}.dmg"
  appcast 'https://www.jbidwatcher.com/sparkle/updates.xml',
          checkpoint: '8c77c9c8c3b057dc796441fec033235f659ac91a60362b6701cf16734342c8c2'
  name 'JBidwatcher'
  homepage 'https://www.jbidwatcher.com'

  app 'JBidwatcher.app'
end
