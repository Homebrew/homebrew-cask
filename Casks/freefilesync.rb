cask 'freefilesync' do
  version '8.0'
  sha256 '8d7579f7e1d006417158b73310b82d15bf83daf54526ad63448b406505d26f3c'

  url "http://www.freefilesync.org/download/2d658dgdjcnbthd/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip",
      referer: 'http://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
