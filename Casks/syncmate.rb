cask 'syncmate' do
  version '6.4.317'
  sha256 'c0ac18403379ee4ddd67858ef186dec272fffa9911011d65579b3de06acb7c02'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: 'b3b053134b3f4f886b7ee6fa63bb1da8ce0e68fe9a82cec74afaf7300f6aa140'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
