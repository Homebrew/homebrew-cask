cask 'santa' do
  version '0.9.13'
  sha256 '6d98453b33b90f93fbc6f4595a7018bdf775ca44235d04cecefdf91558829aa3'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: '3f49b3bbb7ff12b9a98741538152e59d210f4931df6e4bfb1677666de6b9351e'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
