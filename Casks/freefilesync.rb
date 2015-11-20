cask :v1 => 'freefilesync' do
  version '7.6'
  sha256 'e75e292d9464daf53c2051c87f682d8bf83685f0a6532a16fa8253b2c69bb266'

  url "http://www.freefilesync.org/download/m9fd99e69p2a6j6/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip", :referer => 'http://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
