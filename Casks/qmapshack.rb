cask 'qmapshack' do
  version '1.8.0'
  sha256 '9887b20014d64d69c993811d9e10b3ed880250a0d4b4c00b50430067627541b1'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
