cask :v1 => 'powder' do
  version :latest
  sha256 :no_check

  url 'http://powdertoy.co.uk/Download/powder-mac32.dmg'
  homepage 'http://powdertoy.co.uk'
  license :unknown    # todo: improve this machine-generated value

  app 'Powder.app'
end
