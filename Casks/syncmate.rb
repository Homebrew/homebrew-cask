cask 'syncmate' do
  version '6.2.279'
  sha256 '8c77958b8be6a903b393773c59694ee1aa14a4f1aea7dc86447f8b7f305015ef'

  # eltima.com is the official download host per the appcast feed
  url "http://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          :sha256 => 'dbad84f846f25a623a7b1551b8d21b6a6c5887ba3079b02b5571aac94c1a9286'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
