cask 'santa' do
  version '1.13'
  sha256 '37b3f9acfd02b4e1b23bf9e3288f9b14f350bbdbb54694fc8b07ee4e81b23057'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall delete:    '/usr/local/bin/santactl',
            kext:      'com.google.santa-driver',
            launchctl: [
                         'com.google.santa',
                         'com.google.santa.bundleservice',
                         'com.google.santad',
                       ],
            pkgutil:   'com.google.santa'

  caveats "For #{token} to use EndpointSecurity, it must be granted Full Disk Access under System Preferences → Security & Privacy → Privacy"
end
