cask 'sync-my-l2p' do
  version '2.2.0'
  sha256 '76344b27cda005a3e60135d880f482eef08bc0f1db84480e39677dd230823886'

  # github.com/Sync-my-L2P/Sync-my-L2P was verified as official when first introduced to the cask
  url "https://github.com/Sync-my-L2P/Sync-my-L2P/releases/download/v#{version}/SyncMyL2P-#{version}-osx.dmg"
  appcast 'https://github.com/Sync-my-L2P/Sync-my-L2P/releases.atom',
          checkpoint: '131d35c756edf86c9a5197973c41651749402e4a948699a98d1d7ff8bae6b3c2'
  name 'Sync-my-L2P'
  homepage 'http://www.sync-my-l2p.de'

  app 'Sync-my-L2P.app'
end
