cask 'sql-operations-studio' do
  version '0.30.6'
  sha256 'a4efe685458ce71b92f33f75eef6944532e47326603b6b2f1b6cdfe26f67df1d'

  # sqlopsbuilds.blob.core.windows.net/release was verified as official when first introduced to the cask
  url "https://sqlopsbuilds.blob.core.windows.net/release/#{version}/sqlops-macos-#{version}.zip"
  appcast 'https://sqlops-update.azurewebsites.net/api/update/darwin/stable/VERSION'
  name 'SQL Operations Studio'
  homepage 'https://docs.microsoft.com/sql/sql-operations-studio/'

  auto_updates true

  app 'SQL Operations Studio.app'
  binary "#{appdir}/SQL Operations Studio.app/Contents/Resources/app/bin/code", target: 'sqlops'

  zap trash: [
               '~/Library/Application Support/sqlops',
               '~/Library/Preferences/com.sqlopsstudio.oss.helper.plist',
               '~/Library/Preferences/com.sqlopsstudio.oss.plist',
               '~/Library/Saved Application State/com.sqlopsstudio.oss.savedState',
             ]
end
