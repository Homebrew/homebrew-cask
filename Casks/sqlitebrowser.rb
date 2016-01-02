cask 'sqlitebrowser' do
  version '3.8.0v4'
  sha256 '95ef39263a7923dbfb7e659a52cbe6a51eb4139396536d5919864b3b8e1660a5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/sqlitebrowser-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          :sha256 => '3cc0f910259b1dd0eca32998a46a8832b594dec1dadbaa7c6d03a1c01ebcc349'
  name 'DB Browser for SQLite'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'
  license :oss

  app 'sqlitebrowser.app'
end
