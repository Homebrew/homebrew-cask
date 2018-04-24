cask 'santa' do
  version '0.9.25'
  sha256 '7a27ec37d9a6b27d54b723f2b01293343986f041785bdd69e3c0e26d86a876c9'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'd3310d7ce5cd5c940cf012ffce8cf268deb7bcfbcd43ceec549dbe2caf676dc8'
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
