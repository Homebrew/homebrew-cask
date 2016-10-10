cask 'sqlitebrowser' do
  version '3.9.1'
  sha256 'e4145eae9fb8457431894a3816ae5b90ca8e8122677fae392d18fcbab869afd4'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: '98208e99c912b1e888123a7bda69a8daff42e49009e4d834b8fb7ac5d7ae2d05'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'

  app 'DB Browser for SQLite.app'
end
