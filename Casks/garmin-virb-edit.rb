cask 'garmin-virb-edit' do
  version '4.1.0'
  sha256 '122fd58dc4cf3f47e9393faf0abd66a47db5a997e8f7c427bd7eb184267cb829'

  url "http://download.garmin.com/software/VIRBEditforMac_#{version.no_dividers}.dmg"
  name 'Garmin VIRB Edit'
  homepage 'https://www.garmin.com/en-US/shop/downloads/virb-edit'

  depends_on macos: '>= 10.10'

  pkg 'Install VIRB Edit.pkg'

  uninstall quit:    'com.garmin.VIRBEdit',
            pkgutil: [
                       'com.garmin.VIRBEdit',
                       'com.garmin.VirbEditPostFlight',
                     ]
end
