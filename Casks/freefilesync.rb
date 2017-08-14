cask 'freefilesync' do
  version '9.3'
  sha256 '295c219901c698e88e22220d6fa46da1e416c89b3133287894508a96bc763a14'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
