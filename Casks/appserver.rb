cask 'appserver' do
  version '1.1.3-200'
  sha256 'dc7a94a1812356250b2cca7eb337c7fc7ad38c71745fc243492ec3113fac6c31'

  # github.com/appserver-io/appserver was verified as official when first introduced to the cask
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          checkpoint: '5f1962c7d1468e71ec012ce91cdf6644ecef67af3aed1c27554cb8156d6cc5d8'
  name 'appserver.io'
  homepage 'http://www.appserver.io'

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall pkgutil: [
                       'com.techdivision.appserver-io.runtime',
                       'com.techdivision.appserver-io.source',
                     ]
end
