cask 'lyn' do
  version '1.8.4'
  sha256 '899e6c37699f02ed0fe7c4abb09a27a5fdbf3f834ebfca1e661ec648495c4297'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: 'd4771771a079e5cfcb98e6767eee31349ea606837c4f5120ec19c2dab6fc9661'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'

  app 'Lyn.app'
end
