cask 'freefilesync' do
  version '9.4'
  sha256 'ba62b487b0f13351a2fb61e47b0a4b68c720a8183286bb18e3bb1d539b6caabe'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
