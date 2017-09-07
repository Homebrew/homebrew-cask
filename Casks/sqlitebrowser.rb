cask 'sqlitebrowser' do
  version '3.10.0'
  sha256 'b7d5bdc92c4d5b4d1b69203033e75cc537daca00b95e39f737ed32eae728c6aa'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: '513c8130253637a28925d3d5e2ff287a128fed1d001b1947ea11be8ef48b1405'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org/'

  app 'DB Browser for SQLite.app'
end
