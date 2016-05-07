cask 'syncmate' do
  version '6.4.316'
  sha256 'aa9e775991939587bf0b75ea9809656456dc6be47d2655312e0f087f60eab448'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: '77746d23ccbd608699db977a6c35b9a749e97f5eefb49f5a9828ad7518ff0452'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
