cask 'freefilesync' do
  version '8.2'
  sha256 '6d89c15ebdb1be2c1d26d1103e549e4c6dc4805a6d897202bb4bb9715a033690'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_Mac_OS_X.zip",
      referer: 'http://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
