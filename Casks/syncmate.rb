cask 'syncmate' do
  version '7.4.452'
  sha256 '541c4d6193851fa0d26bfe8d017d8cb4416adb010fd361f345ba47d088ab626f'

  url "https://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'https://cdn.eltima.com/download/syncmate-update/syncmate6.xml'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  app 'SyncMate.app'
end
