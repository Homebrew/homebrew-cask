cask 'sql-operations-studio' do
  version '0.32.8'
  sha256 'ca3efac35a0db887a08f410a4c2ec68d116bd27679e03ae64713f36bfec572d6'

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
