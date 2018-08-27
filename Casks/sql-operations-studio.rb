cask 'sql-operations-studio' do
  version '0.31.4'
  sha256 'd0aaeae73112a57c46cda98f0b9d2c16440280989bc231e6476f6ab0fb588429'

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
