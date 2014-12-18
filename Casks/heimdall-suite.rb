cask :v1 => 'heimdall-suite' do
  version '1.4.0'
  sha256 '4b283fc7bc331f8ec84031c939ef9d2aa71bb8fe6be6d3434dd268d76f7c0e60'

  url "https://bitbucket.org/benjamin_dobell/heimdall/downloads/heimdall-suite-#{version}-mac.dmg"
  name 'Heimdall Suite'
  homepage 'http://glassechidna.com.au/heimdall/'
  license :mit

  pkg "Heimdall Suite #{version}.pkg"

  uninstall :pkgutil => 'au.com.glassechidna.HeimdallSuite'

  caveats do
    reboot
  end
end
