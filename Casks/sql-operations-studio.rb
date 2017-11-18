cask 'sql-operations-studio' do
  version '0.23.6'
  sha256 '25b59f32cb37298d0975489ecf0a1a7d1839ec3888ae8ae2fcaec3e62ee95814'

  url "https://download.microsoft.com/download/4/E/B/4EB84B63-4532-40D4-A1CD-8FD5772971CF/sqlops-macos-#{version}.zip"
  name 'SQL Operations Studio'
  homepage 'https://docs.microsoft.com/sql/sql-operations-studio/'

  app 'SQL Operations Studio.app'
  binary "#{appdir}/SQL Operations Studio.app/Contents/Resources/app/bin/code", target: 'sqlops'

  zap trash: [
               '~/Library/Application Support/sqlops',
               '~/Library/Preferences/com.sqlopsstudio.oss.helper.plist',
               '~/Library/Preferences/com.sqlopsstudio.oss.plist',
               '~/Library/Saved Application State/com.sqlopsstudio.oss.savedState',
             ]
end
