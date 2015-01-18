cask :v1 => 'freefilesync' do
  version '6.13'
  sha256 '0abcfd5d96ee8a51ae243138f410f68b2dae6320fd7337237047bd53d263e90f'

  url "http://downloads.sourceforge.net/project/freefilesync/FreeFileSync/#{version}/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip"
  homepage 'http://freefilesync.sourceforge.net/'
  license :oss

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
