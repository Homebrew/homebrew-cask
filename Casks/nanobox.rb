cask 'nanobox' do
  version '2.2.0'
  sha256 '998432ff26f10a70cccdd65c9e7cfde7c7b7169bd70152f606ae5daabe4fb9be'

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
