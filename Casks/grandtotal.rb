cask 'grandtotal' do
  version '5.2.7.3'
  sha256 'd03fb6702f37f093ea8cee5fdb760b1dbce2a9708d0b143f1b452597d34d3683'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
