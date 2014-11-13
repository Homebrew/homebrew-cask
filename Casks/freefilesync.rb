cask :v1 => 'freefilesync' do
  version '6.10'
  sha256 'f0a1a52ef8e1a011b522af98afe64e9474f68f98eb0ab7c3a3dafb3fb6d0a6bf'

  url "http://downloads.sourceforge.net/project/freefilesync/FreeFileSync/#{version}/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip"
  homepage 'http://freefilesync.sourceforge.net/'
  license :oss

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
