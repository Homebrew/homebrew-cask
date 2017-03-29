cask 'sqlitebrowser' do
  version '3.9.1v2'
  sha256 '52c92282e70e9d7f328329e12682d8ab7e06456071465f63196f769d98d6e6d7'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: '1e739cc0819eaee1bb398e23548514cc5e47aad374970c56978d6eadb30d3985'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org/'

  app 'DB Browser for SQLite.app'
end
