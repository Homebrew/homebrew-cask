cask 'qmapshack' do
  version '1.7.2'
  sha256 'ade46a7995e44410b368369d5bfbc499c04b29cfbae1e3a3b1adcac67c83237d'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
