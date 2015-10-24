cask :v1 => 'freefilesync' do
  version '7.5'
  sha256 '3da2b42915733d0da4ba53a059cfb7c191a9a3a1d6c656c66965111da70776cc'

  url "http://www.freefilesync.org/download/m9fd99e69p2a6j6/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip", :referer => 'http://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
