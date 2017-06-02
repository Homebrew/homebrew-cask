cask 'nanobox' do
  version '2.1.2'
  sha256 '03051ff7a197f8641172f8fb8c12e3d34fb5a6d12405e88e2ff0a707b1f8a811'

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
