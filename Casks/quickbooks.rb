cask 'quickbooks' do
  version '2020'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksMac#{version}.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/Downloads/Mac/QuickBooks/019/8D4DADF6-42C2-4D64-ABC0-D28253C30D19/appcast.xml'
  name 'QuickBooks Desktop'
  homepage 'https://quickbooks.intuit.com/mac/'

  depends_on macos: '>= :mojave'

  app "QuickBooks #{version}.app"
end
