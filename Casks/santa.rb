cask 'santa' do
  version '0.9.12'
  sha256 'ccf3fd8c067c4520c7191368e911ccea30ed58eaffbd2eb5eb6b689dbc9d6cf3'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast 'https://github.com/google/santa/releases.atom',
          checkpoint: 'ef4fd7ce984934dbc20efcb6de45b27f222511554c6c8ab055fd442b037cb4a6'
  name 'Santa'
  homepage 'https://github.com/google/santa'
  license :apache

  pkg "santa-#{version}.pkg"

  uninstall kext:      'com.google.santa-driver',
            launchctl: ['com.google.santad', 'com.google.santagui'],
            pkgutil:   'com.google.santa'
end
