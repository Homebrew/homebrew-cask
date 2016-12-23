cask 'santa' do
  version '0.9.14'
  sha256 '51e177590a037bdb032883af09789e4462b97f3d54f150b9a471f6db510b1bb6'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'f19638c7462b65e5f67590370a0458005d2a4c16d108b47739ac44a5c76cb484'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
