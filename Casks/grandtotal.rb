cask 'grandtotal' do
  version '5.2.7.1'
  sha256 '55bd18c2b5cd2901d3fa156b60441092ddb0b46adf9afd84544c40c8d4e56450'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
