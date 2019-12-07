cask 'celestia' do
  version '1.6.1'
  sha256 'db09842a10b377038bedef87fda8d159549234b2e072fa22e096ade84aa3f52a'

  url "https://celestia.space/files/celestia/#{version}/celestia-osx-#{version}.dmg"
  appcast 'https://github.com/CelestiaProject/Celestia/releases.atom'
  name 'Celestia'
  homepage 'https://celestia.space/'

  app 'Celestia.app'
end
