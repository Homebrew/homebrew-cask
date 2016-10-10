cask 'qmapshack' do
  version '1.6.1'
  sha256 '1a6114f4a0dc615c3a74f3b15eeb50b916d86040ad7bc7aed4048a6f023c8e4a'

  url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack-MacOSX_#{version}.tar.gz"
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
