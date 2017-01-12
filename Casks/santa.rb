cask 'santa' do
  version '0.9.16'
  sha256 '76287d015bbcd0aa0425cd0410a84ee237ef279b0c2145abe9c258665f5ea98a'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'ec812bdf9e237614dd5ddb88ba6e4bf2d8a57bca084afbbe867110596e901186'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
