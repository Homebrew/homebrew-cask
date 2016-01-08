cask 'sqlitebrowser' do
  version '3.8.0v5'
  sha256 'b32597066279442e67e363dab9d89cf2533a6624f3a769b0d2681e22552ed3eb'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/sqlitebrowser-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          :sha256 => '9ca8a0972b220d498013af3dd25125a370d2da38a9d8487f6e76ed55f4e8c68f'
  name 'DB Browser for SQLite'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'
  license :oss

  app 'sqlitebrowser.app'
end
