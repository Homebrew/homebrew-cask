cask 'sqlitebrowser' do
  version '3.8.0v5'
  sha256 'b32597066279442e67e363dab9d89cf2533a6624f3a769b0d2681e22552ed3eb'

  # github.com/sqlitebrowser/sqlitebrowser was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/sqlitebrowser-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: '5e7433998dd925ed7fc0bd2764c56019af0a930323a7fefe18ef240145a64522'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'
  license :oss

  app 'sqlitebrowser.app'
end
