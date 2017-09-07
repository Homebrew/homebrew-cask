cask 'freefilesync' do
  version '9.3'
  sha256 '03bf3a00ceae583e87c9e2afae255e75ece6ff218a2021b5fd9ccfdcdda6c33d'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
