cask 'sqlpro-for-postgres' do
  version '1.0.110'
  sha256 'dc5e7e8d234e8beabc153949043b98b5b9fc0705a701aa2726c01747a604dd81'

  # d3fwkemdw8spx3.cloudfront.net/postgres was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip"
  name 'SQLPro for Postgres'
  homepage 'https://www.macpostgresclient.com/SQLProPostgres'

  app 'SQLPro for Postgres.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqlpropostgres',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl',
              ]
end
