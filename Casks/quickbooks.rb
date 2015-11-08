cask :v1 => 'quickbooks' do
  version '2.1.0'
  sha256 'a95cc6e008ac63af2a055cfc10ea99e19ec2186f04e1ee503c77456314226746'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          :sha256 => '92a13f415527e55040b29e7c2a168bac262b503d0cc2fb78c2eae3a9a4e0eb47'
  name 'QuickBooks Mac App'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
