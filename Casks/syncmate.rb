cask 'syncmate' do
  version '7.0.365'
  sha256 '617143bd9b5405d44a543cfca859a4fe7c03558c9001c09d419029f8ef1bbdca'

  url "https://mac.eltima.com/download/syncmate#{version.major}.dmg"
  appcast "http://www.eltima.com/download/syncmate-update/syncmate#{version.major}.xml",
          checkpoint: 'aa5c21ff6516c2bc37f351b2a0dc695c370c7f2eb289dc44eafbbe6626f20b0d'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  app 'SyncMate.app'
end
