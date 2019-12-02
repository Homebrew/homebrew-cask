cask 'grandtotal' do
  version '6.0.1'
  sha256 'ee1a42104af254290139451f78d00f9210117022bedbd150ba48dc6848344a75'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
