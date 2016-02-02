cask 'sqlitebrowser' do
  version '3.8.0v5'
  sha256 'b32597066279442e67e363dab9d89cf2533a6624f3a769b0d2681e22552ed3eb'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version.major_minor_patch}/sqlitebrowser-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom',
          checkpoint: '58e3b4fe1a5b390c513304e826adbc698d5f02997d646b4ad7c11797c12b2f64'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'
  license :oss

  app 'sqlitebrowser.app'
end
