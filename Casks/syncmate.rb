cask 'syncmate' do
  version '6.2.279'
  sha256 'afc1bc6a1ac0d3aa0784eec271c76e31ea8c885f68ce6ffc1aa6220376c93b98'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: '116cf7df50ef73545c5dac6323e8f32d068ebd37740601d9bd4037b21b3538ff'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
