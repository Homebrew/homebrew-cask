cask :v1 => 'qmapshack' do
  version '1.4.0'
  sha256 '1e3c8d5eaf38b71fe4af7074152c1efb55bab9c0eb4a2b964cafc0033d47d9ca'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'
  license :gpl

  app 'QMapShack.app'
end
