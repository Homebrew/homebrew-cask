cask 'nottingham' do
  version '2.1.3'
  sha256 'ccaceba0bc6566ba2850126ae2d456fd6d44b78122117b8e1f3e597ef812bd55'

  url "http://dl.clickontyler.com/nottingham/nottingham20_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=11',
          :checkpoint => 'd3eb2331d5a8b11de3af047dda36eee68ff387281c1b14c53fad7c6d4cc205e2'
  name 'Nottingham'
  homepage 'https://clickontyler.com/nottingham/'
  license :gratis

  app 'Nottingham.app'
end
