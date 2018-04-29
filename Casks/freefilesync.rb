cask 'freefilesync' do
  version '10.0'
  sha256 '10dc8b4aa2ab48510354b4620b861eb06db174479067b0546d2d131c9b1fae5b'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
