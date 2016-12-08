cask 'sqlpro-for-postgres' do
  version '1.0.99'
  sha256 'ef61eec75ea9eeb84b34c750519f76503f5d442575cdae86e4725d695f41a329'

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
