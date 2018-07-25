cask 'standard-notes' do
  version '2.3.2'
  sha256 'cd35b4351900e3cb31716f837aa64e3d67eedf8b995eec328c70d868b9af1271'

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
