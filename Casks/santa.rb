cask 'santa' do
  version '0.9.15'
  sha256 '8dde83663dd5e80770483f364e51a1b106c92291f84e707a4b31903104651a27'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'd988bc77ef0f75f77209fa6d8602677b2d8c0c4f1d4bc56a9dba1ea7180fc174'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
