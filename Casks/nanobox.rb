cask 'nanobox' do
  version '2.2.0'
  sha256 'a601fbef6ae9403d0139a188d380ed852b31cc8adbb7836d41573a452bb27034'

  # s3.amazonaws.com/tools.nanobox.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tools.nanobox.io/installers/v#{version.major}/mac/Nanobox.pkg"
  appcast 'https://github.com/nanobox-io/nanobox/releases.atom',
          checkpoint: 'c8bab1b2a3f6216c4bae24b692a8e4c6327c3fbc8dd87928d58bbd6710269e8a'
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
