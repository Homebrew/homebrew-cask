cask 'freefilesync' do
  version '7.8'
  sha256 '84dd8fc9fc2eebb35d6dd7ee153c772166d91a17e697701ba4521259da630fab'

  url "http://www.freefilesync.org/download/gjcyjw75w8f260w/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip",
      referer: 'http://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
