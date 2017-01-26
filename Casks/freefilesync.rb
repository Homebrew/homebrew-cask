cask 'freefilesync' do
  version '8.8'
  sha256 'f8a9878fed6b88eb7f0f48a105d2da771f2c203fae865776a3d581481b9a1f52'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
