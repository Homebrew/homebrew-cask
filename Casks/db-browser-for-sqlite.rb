cask 'db-browser-for-sqlite' do
  version '3.10.1'
  sha256 '9456e8ff081004bd16711959dcf3b5ecf9d304ebb0284c51b520d6ad1e0283ed'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-#{version}.dmg"
  name 'DB Browser for SQLite'
  homepage 'http://sqlitebrowser.org/'

  app 'DB Browser for SQLite.app'
end
