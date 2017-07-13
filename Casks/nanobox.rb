cask 'nanobox' do
  version '2.1.2'
  sha256 '06fcf6071244cd5f7b74b8ea0b1df5a15ff26790f987698f2ad812fbd7732e54'

  # s3.amazonaws.com/tools.nanobox.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tools.nanobox.io/installers/v#{version.major}/mac/Nanobox.pkg"
  appcast 'https://github.com/nanobox-io/nanobox/releases.atom',
          checkpoint: 'ea5b2c616c63b0bf023ffdb11ec901e2b047a1f2c993e8c5d4c1a6843651f20d'
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
