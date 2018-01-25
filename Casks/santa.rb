cask 'santa' do
  version '0.9.21'
  sha256 '2cfe09a114c3e2ce12b6e54b4078a5aabe975c040bbf29734ec2f2f01ec10a56'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'e1fa78a6cc0fb47fe008083d360ad24d8c7f765406f2b9247aab4b311f9e178e'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall delete:    '/usr/local/bin/santactl',
            kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
