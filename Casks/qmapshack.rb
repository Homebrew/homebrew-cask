cask 'qmapshack' do
  version '1.5.1'
  sha256 '84f90014226ce4c24e0c5f9e00e400eb83af80d95d378e44324ced2903e8314c'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'
  license :gpl

  app 'QMapShack.app'
end
