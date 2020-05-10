cask 'grandtotal' do
  version '6.1.2'
  sha256 'fe4641953b9c70f222bd68a70b3bb65f3348697a02b005dc33fe1e562298ae60'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
