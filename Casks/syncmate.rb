cask 'syncmate' do
  version '7.3.427'
  sha256 '2057a4a851b2f693674754f72ae81053cfb7cda4a0525c799417ba918fa9ad9e'

  url "https://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'https://cdn.eltima.com/download/syncmate-update/syncmate6.xml'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  app 'SyncMate.app'
end
