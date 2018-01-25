cask 'freefilesync' do
  version '9.7'
  sha256 '8218d2cc58de4e214b8256be3d75652b58c894932c656c5b5e6dcf3297f1d75a'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
