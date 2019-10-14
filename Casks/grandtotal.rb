cask 'grandtotal' do
  version '5.2.8'
  sha256 'd3c206a4a091bbf6491d14a530cb6a3b8be676d27180b526f282cd44b0e4a905'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
