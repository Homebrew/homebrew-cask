cask 'quickbooks' do
  version '2.4.0'
  sha256 '4fb38461817801afca59982a854c3f1918bd840c748367c34db27c48e05f14f1'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: 'b1cac239df406c8c310adf9eac5b06efacc152774f39269c23bf7e0fbcac0da8'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
