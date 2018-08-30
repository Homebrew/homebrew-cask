cask 'sql-operations-studio' do
  version '0.32.7'
  sha256 '3a6d25d0f1ba95cea83ea4e58e5a32f1993e05d80147e830744caa61f3c2242c'

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
