cask 'jbidwatcher' do
  version '2.5.6'
  sha256 '659de073d9e0d71fa86e21db1524b7df57b36ff7826600a01ed93da6df5f5c9f'

  url "https://www.jbidwatcher.com/download/JBidwatcher-#{version}.dmg"
  appcast 'https://www.jbidwatcher.com/sparkle/updates.xml',
          checkpoint: '9166bea6295666e8357685aa6c3d2d43a6a555ed80c4272122ab76a24559eb7c'
  name 'JBidwatcher'
  homepage 'https://www.jbidwatcher.com'
  license :cc

  app 'JBidwatcher.app'
end
