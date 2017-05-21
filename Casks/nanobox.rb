cask 'nanobox' do
  version '2.1.1'
  sha256 '2c5e001b55c0741a359fa8f7a93b78608e3c8584adead4a0c09a59a563f05d1c'

  # s3.amazonaws.com/tools.nanobox.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tools.nanobox.io/installers/v#{version.major}/mac/Nanobox.pkg"
  appcast 'https://github.com/nanobox-io/nanobox/releases.atom',
          checkpoint: '5a76290986958e939845f9d1f9946ee63593709f3733c319eb030c64ab7e8e26'
  name 'nanobox'
  homepage 'https://www.nanobox.io/'

  pkg 'Nanobox.pkg'

  uninstall launchctl: 'net.sf.tuntaposx.tap',
            kext:      'net.sf.tuntaposx.tap',
            pkgutil:   [
                         'net.sf.tuntaposx.tap',
                         'io.nanobox.pkg.nanobox',
                       ]

  zap delete: [
                '~/.nanobox',
                '/opt/nanobox',
              ]
end
