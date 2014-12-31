cask :v1 => 'freefilesync' do
  version '6.12'
  sha256 '253c8bdedb827f4f8710ebc694192d0f8a59119fbf55222e387a5dee6b463570'

  url "http://downloads.sourceforge.net/project/freefilesync/FreeFileSync/#{version}/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip"
  homepage 'http://freefilesync.sourceforge.net/'
  license :oss

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
