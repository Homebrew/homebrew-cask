cask :v1 => 'syncmate' do
  version :latest
  sha256 :no_check

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  name 'Sync Mate 5'
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          :sha256 => '15a910d19de727e6fb94f8e3dd6d72a5d85b7520d49a58946307a6385ae4591a'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
