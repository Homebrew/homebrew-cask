cask 'powder' do
  version :latest
  sha256 :no_check

  url 'http://powdertoy.co.uk/Download/powder-mac32.dmg'
  name 'Powder Toy'
  homepage 'http://powdertoy.co.uk'
  license :gpl

  app 'Powder.app'
end
