cask 'db-browser-for-sqlite' do
  version '3.11.0'
  sha256 '80d66a492ca3ed1f544d3dfea940c222059e9763280491a1d4cac8fb701e5720'

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
