cask :v1 => 'quickbooks' do
  version '2.3.0'
  sha256 'ffbe4b8901922ffddf91d6e0047820cc6c2ec4b167dc93c799363689a13cad65'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          :sha256 => '136c26738b2fe9ebb436a9034f0db6922283be9a063ba9e0c09e43a537d063b5'
  name 'QuickBooks Mac App'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
