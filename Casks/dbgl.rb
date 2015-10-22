cask :v1 => 'dbgl' do
  version '0.79'
  sha256 '0a5aaf171f1a77f305564e5d952c24fe866e59c6db4678aee77cfde71172775c'

  url "http://members.quicknet.nl/blankendaalr/dbgl/download/dbgl#{version.gsub('.','')}.dmg"
  name 'DBGL'
  homepage 'http://members.quicknet.nl/blankendaalr/dbgl/'
  license :gpl

  app 'DBGL.app'
end
