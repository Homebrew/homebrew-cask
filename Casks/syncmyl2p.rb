cask 'syncmyl2p' do
  version '2.3.0'
  sha256 '5501b2138279121ae6f4f8d44680801a7cbd45695bb314033ed5f310b20ea121'

  # github.com/RobertKrajewski/Sync-my-L2P was verified as official when first introduced to the cask
  url "https://github.com/RobertKrajewski/Sync-my-L2P/releases/download/v#{version}/SyncMyL2P-#{version}-macos.dmg"
  appcast 'https://github.com/RobertKrajewski/Sync-my-L2P/releases.atom'
  name 'Sync-my-L2P'
  homepage 'https://www.syncmyl2p.de/'

  app 'SyncMyL2P.app'
end
