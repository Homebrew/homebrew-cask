cask 'sql-operations-studio' do
  version '0.28.6'
  sha256 'dfb8053c06751eab87ef3b51c7578b54b11d3cbf62d5e0d52bdf7e72389745c1'

  # github.com/Microsoft/sqlopsstudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/sqlopsstudio/releases/download/#{version}/sqlops-macos-#{version}.zip"
  appcast 'https://github.com/Microsoft/sqlopsstudio/releases.atom',
          checkpoint: 'ce65993972ab7f9066b3cdd23562432cfe7b9fee1907624473ac1c52dd4fb752'
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
