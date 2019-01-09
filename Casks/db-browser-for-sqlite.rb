cask 'db-browser-for-sqlite' do
  version '3.10.1'
  sha256 '9456e8ff081004bd16711959dcf3b5ecf9d304ebb0284c51b520d6ad1e0283ed'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom'
  name 'SQLite Database Browser'
  homepage 'https://sqlitebrowser.org/'

  app 'DB Browser for SQLite.app'

  zap trash: [
               '~/Library/Preferences/net.sourceforge.sqlitebrowser.plist',
               '~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState',
             ]
end
