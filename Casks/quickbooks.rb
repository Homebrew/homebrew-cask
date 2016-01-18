cask 'quickbooks' do
  version '2.4.0'
  sha256 '4fb38461817801afca59982a854c3f1918bd840c748367c34db27c48e05f14f1'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: '46d6ab6978ca32d998be566f644a162772192670b8a89baba7595116e967db5e'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
