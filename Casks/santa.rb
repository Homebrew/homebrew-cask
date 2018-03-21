cask 'santa' do
  version '0.9.24'
  sha256 '53988973e13a48d6bdf2f6f5700c4685c4b0c9c398a0dfc6effe0cf3973ae46b'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'ea22fd5727b36b34553a438ed46070f501b8f8df88c4fae45ead8db4aeba3e77'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall delete:    '/usr/local/bin/santactl',
            kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
