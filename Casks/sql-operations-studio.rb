cask 'sql-operations-studio' do
  version '0.24.1'
  sha256 '42f3a59104d27a1fbf07b35c75163145f3fcca5a6bc87ec952a1c6c6dd79b611'

  url "https://download.microsoft.com/download/2/F/4/2F44951C-1ED1-4AEE-9D78-549328104CA7/sqlops-macos-#{version}.zip"
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
