cask 'heimdall-suite' do
  version '1.4.0'
  sha256 '4b283fc7bc331f8ec84031c939ef9d2aa71bb8fe6be6d3434dd268d76f7c0e60'

  # bitbucket.org/benjamin_dobell/heimdall was verified as official when first introduced to the cask
  url "https://bitbucket.org/benjamin_dobell/heimdall/downloads/heimdall-suite-#{version}-mac.dmg"
  name 'Heimdall Suite'
  homepage 'http://glassechidna.com.au/heimdall/'

  pkg "Heimdall Suite #{version}.pkg"

  uninstall pkgutil: 'au.com.glassechidna.HeimdallSuite',
            kext:    'au.com.glassechidna.heimdall_usb_shield'

  zap trash: [
               '~/Library/Preferences/com.yourcompany.heimdall-frontend.plist',
               '~/Library/Saved Application State/com.yourcompany.heimdall-frontend.savedState',
             ]

  caveats do
    reboot
  end
end
