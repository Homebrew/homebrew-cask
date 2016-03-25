cask 'dbgl' do
  version '0.80'
  sha256 '62367f5d08f802725216542f6d2482a5635cbefe7c2ca843059525d7077445d0'

  url "http://members.quicknet.nl/blankendaalr/dbgl/download/dbgl#{version.gsub('.', '')}.dmg"
  name 'DBGL'
  homepage 'http://members.quicknet.nl/blankendaalr/dbgl/'
  license :gpl

  app 'DBGL.app'
end
