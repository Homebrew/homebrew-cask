cask 'qmapshack' do
  version '1.10.0'
  sha256 '8f37941c32d987d42f9d2d5ab80e3eee786c687a3cbbbd0d064d8a0b15a49d39'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  depends_on macos: '>= :mountain_lion'

  app 'QMapShack.app'
end
