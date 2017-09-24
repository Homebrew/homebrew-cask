cask 'sqlitebrowser' do
  version '3.10.1'
  sha256 '9456e8ff081004bd16711959dcf3b5ecf9d304ebb0284c51b520d6ad1e0283ed'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: 'a7b9929b01b4c4b67da144d2dedd26c8f0db460bc96de76fede907062458de67'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org/'

  app 'DB Browser for SQLite.app'
end
