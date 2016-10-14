cask 'freefilesync' do
  version '8.4'
  sha256 '59cc3d42e16fbf5157d4af4fd7be66b02515c71cd673fbb160960152f746806c'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_Mac_OS_X.zip",
      referer: 'https://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
