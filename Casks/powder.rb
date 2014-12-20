cask :v1 => 'powder' do
  version :latest
  sha256 :no_check

  url 'http://powdertoy.co.uk/Download/powder-mac32.dmg'
  homepage 'http://powdertoy.co.uk'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Powder.app'
end
