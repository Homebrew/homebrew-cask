cask 'db-browser-for-sqlite' do
  version '3.11.2'
  sha256 '022536d420dca87285864a4a948b699d01430721b511722bcf9c8713ab946776'

  # github.com/sqlitebrowser/sqlitebrowser/ was verified as official when first introduced to the cask
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
