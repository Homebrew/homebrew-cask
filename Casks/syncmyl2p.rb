cask 'sync-my-l2p' do
  version '2.4.0'
  sha256 '175459183db212c63b168a64a399a275c7d5957abb463336f18364b3ab4744ee'

  # github.com/RobertKrajewski/Sync-my-L2P was verified as official when first introduced to the cask
  url "https://github.com/RobertKrajewski/Sync-my-L2P/releases/download/v#{version}/SyncMyL2P-#{version}-osx.dmg"
  appcast 'https://github.com/RobertKrajewski/Sync-my-L2P/releases.atom'
  name 'Sync-my-L2P'
  homepage 'https://www.syncmyl2p.de/'

  app 'Sync-my-L2P.app'
end
