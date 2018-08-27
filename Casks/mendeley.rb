cask 'mendeley' do
  version '1.19.2'
  sha256 'b2484388738f3d0e5020715272cc5f7676f2aed423db159cbba1ea9d3f75475d'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
