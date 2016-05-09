cask 'sync-my-l2p' do
  version '2.2.0'
  sha256 '76344b27cda005a3e60135d880f482eef08bc0f1db84480e39677dd230823886'

  url 'https://github.com/Sync-my-L2P/Sync-my-L2P/releases/download/v2.2.0/SyncMyL2P-2.2.0-osx.dmg'
  name 'Sync-my-L2P'
  homepage 'http://www.sync-my-l2p.de'
  license :oss

  app 'Sync-my-L2P.app'
end
