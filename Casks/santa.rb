cask 'santa' do
  version '0.9.18'
  sha256 'abd30ad8b275f7b961cd8133e0fb2702aa5f21c06d7a5e0e64be2507c80dafe3'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'f09d5b02abb675e7c89d358b451cc60cb0a536c17a83c0effabe61c87b46b61e'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
