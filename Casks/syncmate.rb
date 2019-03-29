cask 'syncmate' do
  version '7.3.441'
  sha256 'a9e960e93bee8360ca4abb84fa21b7ffff4f8ed5e45a4cfd866cda0126eeb52b'

  url "https://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'https://cdn.eltima.com/download/syncmate-update/syncmate6.xml'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  app 'SyncMate.app'
end
