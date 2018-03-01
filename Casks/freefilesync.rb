cask 'freefilesync' do
  version '9.8'
  sha256 'f963ffaa61a6b9b53425b3db404c1e5d469d191c02e92c10b63523db9cb22e44'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
