cask 'freefilesync' do
  version '9.5'
  sha256 'e53c7889b424fc8bee0ea4a23788bde998b4886a63a705614fb12b1cf5d9b2d3'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
