cask 'sqlpro-for-postgres' do
  version '1.0.76'
  sha256 '9132f3e9a9c9df61e00a2bf1e8f8e1348faf73ae1efc0a68c5a64f15884cee1b'

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
