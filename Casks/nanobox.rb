cask 'nanobox' do
  version '2.3.0'
  sha256 '19298f958d56856061d1a93750f01c3ff36a12f3e113b9839704810753684200'

  # s3.amazonaws.com/tools.nanobox.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tools.nanobox.io/installers/v#{version.major}/mac/Nanobox.pkg"
  appcast 'https://github.com/nanobox-io/nanobox/releases.atom',
          checkpoint: 'fe081e2388dd048ce02ab30b1cdd1f2225d609201af633b1858c344c324aef2c'
  name 'nanobox'
  homepage 'https://www.nanobox.io/'

  pkg 'Nanobox.pkg'

  uninstall launchctl: 'net.sf.tuntaposx.tap',
            kext:      'net.sf.tuntaposx.tap',
            pkgutil:   [
                         'net.sf.tuntaposx.tap',
                         'io.nanobox.pkg.nanobox',
                       ]

  zap trash: [
               '~/.nanobox',
               '/opt/nanobox',
             ]
end
