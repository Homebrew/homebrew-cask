cask 'nanobox' do
  version '2.3.0'
  sha256 'db475905b0907afdd46e03227ebd7c3df0e3270f28544f2fd16de54142656e2e'

  # s3.amazonaws.com/tools.nanobox.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tools.nanobox.io/installers/v#{version.major}/mac/Nanobox.pkg"
  appcast 'https://github.com/nanobox-io/nanobox/releases.atom',
          checkpoint: '9c76c6fe3909ff7e2dd99a7468a7c59cf93d80a63e81947a340d48fa7994a71c'
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
