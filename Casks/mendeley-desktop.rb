cask :v1 => 'mendeley-desktop' do
  version '1.14'
  sha256 '11d04e1f0a9ea79dccd87aa5f84dd1c0927448a392ca98ff39307861f68df7ab'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
