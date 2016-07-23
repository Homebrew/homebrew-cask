cask 'garmin-virb-edit' do
  version '3.6.0'
  sha256 'b4ed5948cc72db03966e1e1410d39af3430699b7b1628e7899568fc15c0516b8'

  url "http://download.garmin.com/software/VIRBEditforMac_#{version.no_dividers}.dmg"
  name 'Garmin VIRB Edit'
  homepage 'https://www.garmin.com/en-US/shop/downloads/virb-edit'
  license :commercial

  depends_on macos: '>= 10.10'

  pkg 'Install VIRB Edit.pkg'

  uninstall quit:    'com.garmin.VIRBEdit',
            pkgutil: [
                       'com.garmin.VIRBEdit',
                       'com.garmin.VirbEditPostFlight',
                     ]
end
