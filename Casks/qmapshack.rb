cask :v1 => 'qmapshack' do
  version '1.3.1'
  sha256 '140a1990bd6ba3679ba8bea4ab408fa0efeb66ebb686bc7b855a2e431c655b77'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'
  license :gpl

  app 'QMapShack.app'
end
