cask :v1 => 'quickbooks' do
  version '2.0.0'
  sha256 'cfbb56fd941b9f535cd0a048557fcfdabf36742edf30f0bdaf94fa63ce4e598d'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web_Dev/sample/static/qbomac/rssfeeds/Staged/QuickBooksMacApp.xml',
          :sha256 => 'b28438af287a4ad92d549e353a9dcb1c0ffbd3d0a6ecee5c47df0e7c9a8f4e4f'
  name 'QuickBooks Mac App'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
