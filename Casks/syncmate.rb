cask :v1 => 'syncmate' do
  version :latest
  sha256 :no_check

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  name 'Sync Mate 5'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
