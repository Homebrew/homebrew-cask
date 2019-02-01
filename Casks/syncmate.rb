cask 'syncmate' do
  version '7.3.434'
  sha256 '01caa5bb3a9512cab40eecd4116f74a8c4cae5704d8d1ff63a18d1805813e3c3'

  url "https://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'https://cdn.eltima.com/download/syncmate-update/syncmate6.xml'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  app 'SyncMate.app'
end
