cask 'quickbooks' do
  version '2020'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksMac#{version}.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/Downloads/Mac/QuickBooks/018/9DBF6268-EEBF-431D-9E50-DE3FEAE52FA2/appcast.xml'
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  depends_on macos: '>= :sierra'

  app "QuickBooks #{version}.app"
end
