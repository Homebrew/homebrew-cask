cask :v1 => 'quickbooks' do
  version '2.2.0'
  sha256 '0fb97f313e33cbb8e4ee7158d53bf9316868ef92a12cb98c62971fe74f8842fd'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          :sha256 => 'c24ad4d5c7a3a8ca4e5922d652b2d4a83eb42cc3d1ef8ff5e6c9dfd4668af10d'
  name 'QuickBooks Mac App'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
