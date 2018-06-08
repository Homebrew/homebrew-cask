cask 'sql-operations-studio' do
  version '0.30.4'
  sha256 'f75091a90a5769bc8d99872e9fbe9f480f94bc5f277276093153f588f13354ec'

  # github.com/Microsoft/sqlopsstudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/sqlopsstudio/releases/download/#{version}/sqlops-macos-#{version}.zip"
  appcast 'https://github.com/Microsoft/sqlopsstudio/releases.atom',
          checkpoint: 'e7c59a5daafb8550c60d7aefe6d9bf403b5cf4810db51a0a3a95a8a6d7e50489'
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
