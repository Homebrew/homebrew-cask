cask 'santa' do
  version '0.9.30'
  sha256 'd13c852a0297c392cefd2bc504287c6e63771a17663c173ed71cadf0704137e1'

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
