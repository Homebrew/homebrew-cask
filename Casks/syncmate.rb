cask 'syncmate' do
  version '6.5'
  sha256 'd952d61377e298a625157a1aa3cda283b63e9dc3bd16a8220ad43f4a342e13d1'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast "http://www.eltima.com/download/syncmate-update/syncmate#{version.major}.xml",
          checkpoint: '82b939f1f7ccdaf515234c9d7f28332f9f4b83bda4164dc4ff7e93a5ed377b11'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'

  app 'SyncMate.app'
end
