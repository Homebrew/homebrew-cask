cask 'syncmate' do
  version '7.1.375'
  sha256 '128256351e65f1c179d3cca4946d67d0b0d5dbfcd3f865035fa18a8340424ea0'

  url "http://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'https://cdn.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: 'd38e5040617daf7b77bf6c3e1c5b86ce46103274ca62e758bf2ae8a9e3050874'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  depends_on macos: '>= :mountain_lion'

  app 'SyncMate.app'
end
