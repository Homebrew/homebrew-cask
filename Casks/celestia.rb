cask 'celestia' do
  version '1.6.1'
  sha256 'db09842a10b377038bedef87fda8d159549234b2e072fa22e096ade84aa3f52a'

  url "https://downloads.sourceforge.net/celestia/celestia-osx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/celestia/rss',
          checkpoint: '56994e2d3dcf5068e11639e2a32f6d76225cc54c077fc7811fad81cc2816a856'
  name 'Celestia'
  homepage 'https://sourceforge.net/projects/celestia'

  app 'Celestia.app'
end
