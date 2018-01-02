cask 'freefilesync' do
  version '9.6'
  sha256 '0b5459cb863bd6a3ee17b4f649826f0831ee80a2a9055be1b1750bfb340c2468'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
