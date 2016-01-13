cask 'quickbooks' do
  version '2.4.0'
  sha256 '4fb38461817801afca59982a854c3f1918bd840c748367c34db27c48e05f14f1'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          :sha256 => 'e8cbb98bd567a5a27b4a04a4c099fdcc93ff3c9d2309c69e2e478637757558a5'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
