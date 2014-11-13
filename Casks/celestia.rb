cask :v1 => 'celestia' do
  version '1.6.1'
  sha256 'db09842a10b377038bedef87fda8d159549234b2e072fa22e096ade84aa3f52a'

  url "https://downloads.sourceforge.net/sourceforge/celestia/celestia-osx-#{version}.dmg"
  homepage 'http://sourceforge.net/projects/celestia'
  license :oss

  app 'Celestia.app'
end
