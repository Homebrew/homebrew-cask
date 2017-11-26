cask 'mendeley' do
  version '1.17.12'
  sha256 'e411a9188f588cc9f7a9c4f0da6aad53f9ce012555b22b179deaa54e840476d3'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
