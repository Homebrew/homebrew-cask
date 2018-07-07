cask 'santa' do
  version '0.9.28'
  sha256 'd3d54d49efbb5dda26476d351a073191df4f7dcf6688e4e4663392f9a3390836'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall delete:    '/usr/local/bin/santactl',
            kext:      'com.google.santa-driver',
            launchctl: [
                         'com.google.santad',
                         'com.google.santagui',
                       ],
            pkgutil:   'com.google.santa'
end
