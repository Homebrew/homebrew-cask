cask 'freefilesync' do
  version '9.1'
  sha256 '6ece52d396563f468f9213a6314169ff2cf6cec6ccb95b9f13fe898778e25d74'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
