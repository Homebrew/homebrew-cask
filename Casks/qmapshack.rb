cask 'qmapshack' do
  version '1.11.1'
  sha256 'c44f89981a28732c0a501c297b848f924f6a96a8930e44b807ec7ca636e4e2da'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  depends_on macos: '>= :mountain_lion'

  app 'QMapShack.app'
end
