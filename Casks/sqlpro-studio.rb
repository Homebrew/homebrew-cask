cask 'sqlpro-studio' do
  version '2019.06.11'
  sha256 '389bcd5bb04748d27305cbc9f0e82ecac461e06f9ba5e7024a8d37dd845f4429'

  # d3fwkemdw8spx3.cloudfront.net/studio was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip"
  name 'SQLPro Studio'
  homepage 'https://www.sqlprostudio.com/'

  app 'SQLPro Studio.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqlprostudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*',
             ]
end
