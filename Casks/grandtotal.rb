cask 'grandtotal' do
  version '6.0.4'
  sha256 'b06f440be416522de0a28ad9ee55c9a92442c163840ef7f28c8eba292a9b86f1'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
