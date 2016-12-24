cask 'garmin-virb-edit' do
  version '4.2.1'
  sha256 '828e01685da2741a240a82e956334186a868ac11b46273aa6c8f8dfad9e18d6e'

  url "http://download.garmin.com/software/VIRBEditforMac_#{version.no_dots}.dmg"
  name 'Garmin VIRB Edit'
  homepage 'https://buy.garmin.com/en-US/US/p/573412'

  depends_on macos: '>= :yosemite'

  pkg 'Install VIRB Edit.pkg'

  uninstall quit:    'com.garmin.VIRBEdit',
            pkgutil: [
                       'com.garmin.VIRBEdit',
                       'com.garmin.VirbEditPostFlight',
                     ]
end
