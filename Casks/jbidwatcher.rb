cask 'jbidwatcher' do
  version '2.5.6'
  sha256 '659de073d9e0d71fa86e21db1524b7df57b36ff7826600a01ed93da6df5f5c9f'

  url "https://www.jbidwatcher.com/download/JBidwatcher-#{version}.dmg"
  appcast 'https://www.jbidwatcher.com/sparkle/updates.xml',
          :sha256 => '933921fe72c6bdb91ad48d5a76c2eb861a065fd6be3470907789bd8673b5aadc'
  name 'JBidwatcher'
  homepage 'https://www.jbidwatcher.com'
  license :cc

  app 'JBidwatcher.app'
end
