cask 'sqlpro-for-postgres' do
  version '1.0.125'
  sha256 '09a97e6c249411bdad5df0943130f721c4f6da6e73944c8a53673a0bc5196af0'

  # d3fwkemdw8spx3.cloudfront.net/postgres was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip"
  name 'SQLPro for Postgres'
  homepage 'https://www.macpostgresclient.com/SQLProPostgres'

  app 'SQLPro for Postgres.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqlpropostgres',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*',
             ]
end
