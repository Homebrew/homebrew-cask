cask 'santa' do
  version '0.9.26'
  sha256 '9e4947dfe54d17b46327f99c2f482e01722f79816ba245bcc692ccf63c702ee7'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'ba1f158f6ea56ce7163db0dd2ef106e6ed8393fecd48435e2f447d2f0d8eae0e'
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
