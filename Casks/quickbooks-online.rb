cask 'quickbooks-online' do
  version '2.5.0'
  sha256 'c32cfa3b522c1acbf3a152fc07f4ba2571140763b91fbb7d7f54630097e14c0f'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: '1a0e021c3c7212967930be86a374d5d85b883706fe761c297102cca5c0d650ea'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
