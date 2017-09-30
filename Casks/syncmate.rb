cask 'syncmate' do
  version '7.0.365'
  sha256 '617143bd9b5405d44a543cfca859a4fe7c03558c9001c09d419029f8ef1bbdca'

  url "https://mac.eltima.com/download/syncmate#{version.major}.dmg"
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: 'f387499c262793dc24a6a1afc0d8db3f2467a166101867ac0a7d91af13ccb848'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  app 'SyncMate.app'
end
