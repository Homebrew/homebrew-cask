cask 'celestia' do
  version '1.6.1'
  sha256 'db09842a10b377038bedef87fda8d159549234b2e072fa22e096ade84aa3f52a'

  url "https://downloads.sourceforge.net/celestia/celestia-osx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/celestia/rss',
          checkpoint: 'f42adfe85c82138c4a0d34cb8212c552658765780d93faacd431ccce8ee2a553'
  name 'Celestia'
  homepage 'https://sourceforge.net/projects/celestia/'

  app 'Celestia.app'
end
