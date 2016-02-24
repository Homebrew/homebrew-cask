cask 'mendeley-desktop' do
  version '1.16'
  sha256 '88067c1fd9c3d7dea4f5abfa539445d338984dbbcee2c369e0438862b0d38cf7'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
