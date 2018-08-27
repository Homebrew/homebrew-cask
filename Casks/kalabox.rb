cask 'kalabox' do
  version '2.1.5'
  sha256 '63d7a385ca09d6eea67b0211af0d4d925ca37814cc7a458505c2e7b3030baf1a'

  # github.com/kalabox/kalabox was verified as official when first introduced to the cask
  url "https://github.com/kalabox/kalabox/releases/download/v#{version}/kalabox-v#{version}.dmg"
  appcast 'https://github.com/kalabox/kalabox/releases.atom'
  name 'Kalabox'
  homepage 'https://www.kalabox.io/'

  pkg 'KalaboxInstaller.pkg'

  uninstall pkgutil: [
                       'io.kalabox.pkg.kalabox',
                       'io.kalabox.pkg.docker',
                     ]

  zap launchctl: 'com.docker.vmnetd'
end
