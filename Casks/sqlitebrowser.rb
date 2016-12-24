cask 'sqlitebrowser' do
  version '3.9.1v2'
  sha256 '52c92282e70e9d7f328329e12682d8ab7e06456071465f63196f769d98d6e6d7'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: 'a43e7ac2a6707e523eb215e5e064a616f291d4fcabd97fa094b0fe542208845e'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org/'

  app 'DB Browser for SQLite.app'
end
