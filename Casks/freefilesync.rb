cask 'freefilesync' do
  version '9.6'
  sha256 '899bc5db4760494f159a43dd1c6545f99a52232cd5ad802da69b96482a4c6653'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
