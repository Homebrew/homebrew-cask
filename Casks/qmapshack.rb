cask 'qmapshack' do
  version '1.9.1'
  sha256 'c0907b1dcbfe54c9054e80430a5faf01308dbdf8674e7ad58c744a85755074ad'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
