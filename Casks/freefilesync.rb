cask 'freefilesync' do
  version '8.10'
  sha256 '84497c6e395f1e9fa24ef9202bfadc81c00971caf8c6321f387c68ef877e0f25'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
