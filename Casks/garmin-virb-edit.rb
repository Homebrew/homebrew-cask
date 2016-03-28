cask 'garmin-virb-edit' do
  version '3.5.0'
  sha256 'a584e99b289d4c97fc3921dc298675b06e274c0755785797b76f7233443cdd3e'

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
