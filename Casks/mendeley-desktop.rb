cask 'mendeley-desktop' do
  version '1.17.10'
  sha256 'bd3dc8748ec29fb7e76aa171e36df1e68b0c792e58d252d3491236e4d953f53d'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
