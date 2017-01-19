cask 'standard-notes' do
  version '0.1.1'
  sha256 '9b6a96ac9d00687f9fdd1ccd456ce36575228dd3a6b90662e8fe529bee04d955'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/standardnotes/desktop/releases/download/v0.1.1/Standard.Notes-Mac-0.1.1.dmg'
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '727ba8f515d8c859bf0c05465a1be64d07951fd650b235460a8ef58e4f302954'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
