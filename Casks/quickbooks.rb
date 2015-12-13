cask :v1 => 'quickbooks' do
  version '2.3.1'
  sha256 '2e8df91e1c9e1c2725cc3b4a9db8baf73b7fa3c6fda02613442ba5efcdfd3bed'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          :sha256 => '817f0696a203c85eb4497d68f71de3cb7a8a05e4fb4367a7383affc75ff87402'
  name 'QuickBooks Mac App'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
