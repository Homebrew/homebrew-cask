cask 'freefilesync' do
  version '9.0'
  sha256 '10335b2cbcd17cd4cd4cfbe9c00896ee362a3ca7a542715dfadb9b01defb6189'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
