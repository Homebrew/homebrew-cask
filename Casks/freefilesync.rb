cask :v1 => 'freefilesync' do
  version '7.6'
  sha256 '8785195124b1c1f33fd91513ab9cdef098ff9f9fafe0880eca187803838f528a'

  url "http://www.freefilesync.org/download/p4blb1h5my6tw5f/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip",
      :referer => 'http://www.freefilesync.org/download.php'

  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
