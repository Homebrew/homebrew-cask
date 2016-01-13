cask 'jbidwatcher' do
  version '2.5.6'
  sha256 '659de073d9e0d71fa86e21db1524b7df57b36ff7826600a01ed93da6df5f5c9f'

  url "https://www.jbidwatcher.com/download/JBidwatcher-#{version}.dmg"
  appcast 'https://www.jbidwatcher.com/sparkle/updates.xml',
          :sha256 => '3c750fc00491abc304e5471a9d4c2ba5a822c73b48fcd01d1feb52e692551b52'
  name 'JBidwatcher'
  homepage 'https://www.jbidwatcher.com'
  license :cc

  app 'JBidwatcher.app'
end
