cask 'dbgl' do
  version '0.82'
  sha256 'b5d1b67b9b4a6e6d16ff4c603c3caa2d03ad6d12bc1f58d0246aeeb8f3d837bf'

  url "http://members.quicknet.nl/blankendaalr/dbgl/download/dbgl#{version.no_dots}.dmg"
  name 'DBGL'
  homepage 'http://members.quicknet.nl/blankendaalr/dbgl/'

  app 'DBGL.app'
end
