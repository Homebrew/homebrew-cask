cask 'quickbooks' do
  version '2.4.6'
  sha256 '8e3b6656069a9cc6863ca7668b7c7a1adbc85dbe2d8cf08098da6be72997824e'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: '224f25d5177ce838c76a78c7a0dc2eb9a05f40fd34678a23e1139e557fe30339'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
