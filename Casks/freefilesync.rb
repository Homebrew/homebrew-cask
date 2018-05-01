cask 'freefilesync' do
  version '10.0'
  sha256 'b400b379161dbc1e32733ab2944845e3b3b6fbb9150e0c12d176cfb6944df973'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
