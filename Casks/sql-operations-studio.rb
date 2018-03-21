cask 'sql-operations-studio' do
  version '0.25.4'
  sha256 'e75556e48c91fb559e9bb8fe8f9c33730670b964a3b12f666ad2f52cec61bb34'

  # github.com/Microsoft/sqlopsstudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/sqlopsstudio/releases/download/#{version}/sqlops-macos-#{version}.zip"
  appcast 'https://github.com/Microsoft/sqlopsstudio/releases.atom',
          checkpoint: '708aafbb85897ce4d0b8da360b93bc0875266559b377b6a96457aaab2417071b'
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
