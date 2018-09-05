cask 'standard-notes' do
  version '2.3.4'
  sha256 'd446536d6759cfa37cb31d6b6ab0c34f483dc7e3ac1ae14d3213177b8f8f774c'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom'
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
