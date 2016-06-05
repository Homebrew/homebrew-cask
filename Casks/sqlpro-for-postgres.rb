cask 'sqlpro-for-postgres' do
  version '43'
  sha256 'ef510f2a7f69d0071872e9942f5f3cb967dadf1840e6ef978b38e8db3b019daf'

  # d3fwkemdw8spx3.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres#{version}.app.zip"
  name 'SQLPro for Postgres'
  homepage 'http://www.macpostgresclient.com/SQLProPostgres'
  license :commercial

  app 'SQLPro for Postgres.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.SQLProPostgres',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl',
              ]
end
