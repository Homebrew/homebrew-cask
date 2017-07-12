cask 'freefilesync' do
  version '9.2'
  sha256 'ddd1068b5ce8b4efacd9af64d98fb987f8b58b2913501adc44b2c0f1046a6860'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
