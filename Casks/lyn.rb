cask 'lyn' do
  version '1.8.2'
  sha256 'df15aa097936b9d1ebca4f87559c9d33524cea5d630cc9a641828f97c0689caa'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '67cc250a8517383b307c406f31778de7e32c3172cb59b2b0d7d68d2092d19c47'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'

  app 'Lyn.app'
end
