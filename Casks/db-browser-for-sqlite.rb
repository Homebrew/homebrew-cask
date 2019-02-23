cask 'db-browser-for-sqlite' do
  version '3.11.1v2'
  sha256 'b0ee5b73b9c6305de79640f651ba59edd32c6a94c2245a2bda01ae8091a69b48'

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
