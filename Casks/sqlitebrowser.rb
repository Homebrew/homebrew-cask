cask 'sqlitebrowser' do
  version '3.9.0'
  sha256 '6d82db8924c3ff7d9abda45a844fe000db9679255722fb2ebf07b93d9c2f0e11'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: 'bb9bd0784daca32be3d60b56a2f48c1a7891e5c579d3ac96dce4f26fed434ac1'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'
  license :oss

  app 'DB Browser for SQLite.app'
end
