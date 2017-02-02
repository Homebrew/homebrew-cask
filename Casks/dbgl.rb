cask 'dbgl' do
  version '0.81'
  sha256 '71f7ae2e1cb3787415f7051f08567090117306169e44db9a9c109fc873624be2'

  url "http://members.quicknet.nl/blankendaalr/dbgl/download/dbgl#{version.no_dots}.dmg"
  name 'DBGL'
  homepage 'http://members.quicknet.nl/blankendaalr/dbgl/'

  app 'DBGL.app'
end
