cask 'standard-notes' do
  version '2.0.2'
  sha256 '99b5146b0b26a99bf261e478512070315fe6b16c4e8a2be778ec1479fdfe567c'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard.Notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '361cefecd86033b616fbd32f06ccf6d9b1616d2a7c6a953330e29c86dafedd05'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
