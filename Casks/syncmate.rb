cask 'syncmate' do
  version '6.6.334'
  sha256 '701b9cbcbdf4899c82c7592816f47b0403b0df448185d3f33daa7d8ee31d3807'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast "http://www.eltima.com/download/syncmate-update/syncmate#{version.major}.xml",
          checkpoint: '36abb6bd0123ba9944961df59b58ef9de8fe72d6bc0d0ecc8daf5ff2d0f6a40f'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com/'

  app 'SyncMate.app'
end
