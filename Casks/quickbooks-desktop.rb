cask 'quickbooks-desktop' do
  version '2016'
  sha256 :no_check

  url "http://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksMac#{version}.dmg"

  name 'QuickBooks Desktop'
  homepage 'http://quickbooks.intuit.com/mac/'
  license :commercial

  app "QuickBooks #{version}.app"
end
