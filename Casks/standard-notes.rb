cask 'standard-notes' do
  version '2.1.33'
  sha256 '8b59781c5b246d994d7c54070da1ffb30c78574cd957586141bc6477211d9b65'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'e52079d7f6ebb4429e49f57f279d1cc76e68a57e4071ea992142960292cfaa0f'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  auto_updates true

  app 'Standard Notes.app'

  zap trash: [
               '~/Library/Application Support/Standard Notes',
               '~/Library/Caches/org.standardnotes.standardnotes',
               '~/Library/Caches/org.standardnotes.standardnotes.ShipIt',
               '~/Library/Preferences/org.standardnotes.standardnotes.plist',
               '~/Library/Preferences/org.standardnotes.standardnotes.helper.plist',
               '~/Library/Saved Application State/org.standardnotes.standardnotes.savedState',
             ]
end
