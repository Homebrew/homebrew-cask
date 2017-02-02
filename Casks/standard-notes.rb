cask 'standard-notes' do
  version '0.1.2'
  sha256 'c93bb4edafbe2b60e9b5cc78d261e6b5381772c2ff338af4e3c7d6ae462886e2'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard.Notes-Mac-#{version}.dmg"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'ba4ed2c7e86e4179f5cc0e7ef1db9e42cb048039921969e8ee2a7cfda25ef507'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
