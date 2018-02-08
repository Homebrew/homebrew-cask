cask 'santa' do
  version '0.9.22'
  sha256 '8f97f53bce0bad2c99ab2bb1d62693565d0d67218f6708ee85f8a2f21f542e6b'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'fe9234a73834663fe2a0d0c5155359857c737d679a97f6bebff2d7023242a8c2'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall delete:    '/usr/local/bin/santactl',
            kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
