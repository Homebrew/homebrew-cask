cask 'freefilesync' do
  version '8.3'
  sha256 '1148cff841216da38a2d07b522d32709b6274760aa47dea9760ba4e3dd93f3c3'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_Mac_OS_X.zip",
      referer: 'https://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
