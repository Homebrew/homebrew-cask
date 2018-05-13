cask 'standard-notes' do
  version '2.1.32'
  sha256 'df086e19e613390ce7d2ba0e677206a19e9dfea626859b370ebd45f16e6af4d3'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'f6fd1c97b8e06603e11ed825fe09ad9fe59cb20c29996472c482ce6ce049277d'
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
