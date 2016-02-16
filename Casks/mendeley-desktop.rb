cask 'mendeley-desktop' do
  version '1.15.3'
  sha256 '8a6a2ecd0fe4b4f511997658af17c853f4d87dccdeae9ae973c61d2ce431f0b7'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
