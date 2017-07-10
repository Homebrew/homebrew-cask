cask 'santa' do
  version '0.9.19'
  sha256 '6ad41b41be22e23674cfec284dc5c115262dd1bee9acb7e12f4c2213514a4a2a'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: '5b2f3dd9b5f4dd06d72d78e81e41798443edda93b69d9d4b185d436a863e14dc'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
