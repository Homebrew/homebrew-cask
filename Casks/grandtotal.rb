cask 'grandtotal' do
  version '5.2.6.1'
  sha256 '411f5266b83ab3b649e6cd909fc481cc3b793a4364dbf6d2a6349a8c393801f9'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
