cask 'qmapshack' do
  version '1.12.0_2'
  sha256 '560a601b17a6642617b3b3239a8e01d1cd4ba5decf998c552d56dd622446a769'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
