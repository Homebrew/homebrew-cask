cask 'sql-operations-studio' do
  version '0.24.1'
  sha256 '42f3a59104d27a1fbf07b35c75163145f3fcca5a6bc87ec952a1c6c6dd79b611'

  # github.com/Microsoft/sqlopsstudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/sqlopsstudio/releases/download/v#{version}/sqlops-macos-#{version}.zip"
  appcast 'https://github.com/Microsoft/sqlopsstudio/releases.atom',
          checkpoint: 'eb7212251fe05a7b0d5dd061031d4089671e6215ba48bcebdcd8623bf936d35b'
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
