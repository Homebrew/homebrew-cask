cask 'standard-notes' do
  version '0.1.2'
  sha256 '9b6a96ac9d00687f9fdd1ccd456ce36575228dd3a6b90662e8fe529bee04d955'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard.Notes-Mac-#{version}.dmg"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'ba4ed2c7e86e4179f5cc0e7ef1db9e42cb048039921969e8ee2a7cfda25ef507'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
