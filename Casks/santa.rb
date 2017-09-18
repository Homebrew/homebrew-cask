cask 'santa' do
  version '0.9.20'
  sha256 'dcfc535c97732380ce5a116f352110ca15ee7ebaef0eeb63b648148b21f5f3a4'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'fe503820c7dde7055f65eefcb2b09499031ecdb50e774d607ba451cb1003bf1e'
  name 'Santa'
  homepage 'https://github.com/google/santa'

  pkg "santa-#{version}.pkg"

  uninstall delete:    '/usr/local/bin/santactl',
            kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
