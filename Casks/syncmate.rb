cask 'syncmate' do
  version '6.4.323'
  sha256 '14922490b34de01639cc1db47b1b725a058ef9dd25eff665d4c2d5319fe5ce4a'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: '16abe12acfe9c0f2ecaa819895079e3c01d250070e6993ec01391dc7d1af2208'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
