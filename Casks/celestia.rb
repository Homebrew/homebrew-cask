cask 'celestia' do
  version '1.6.1'
  sha256 'db09842a10b377038bedef87fda8d159549234b2e072fa22e096ade84aa3f52a'

  # downloads.sourceforge.net was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/celestia/celestia-osx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/celestia/rss'
  name 'Celestia'
  homepage 'https://celestia.space/'

  app 'Celestia.app'
end
