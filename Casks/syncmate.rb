cask 'syncmate' do
  version '6.2.279'
  sha256 '8c77958b8be6a903b393773c59694ee1aa14a4f1aea7dc86447f8b7f305015ef'

  # eltima.com is the official download host per the appcast feed
  url "http://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          :sha256 => '6cb826856a6dbd2251f0cdbf313bd17b5d8269c8b780f77cf61fd7ed6cf4b93a'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
