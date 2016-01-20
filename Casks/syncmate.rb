cask 'syncmate' do
  version '6.2.279'
  sha256 '8c77958b8be6a903b393773c59694ee1aa14a4f1aea7dc86447f8b7f305015ef'

  # eltima.com is the official download host per the appcast feed
  url "http://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: '116cf7df50ef73545c5dac6323e8f32d068ebd37740601d9bd4037b21b3538ff'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
