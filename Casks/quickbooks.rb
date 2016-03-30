cask 'quickbooks' do
  version '2.4.3'
  sha256 'f405fac0e881a9b31fc061081a544c1720d67af27d513b9d1727f7090cdfb1a8'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: '46e98a117c49e5bcdccd52dc0df7a7912da652232eb4b97b7aff1604ac2deb77'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
