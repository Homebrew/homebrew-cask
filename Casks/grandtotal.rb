cask 'grandtotal' do
  version '6.0.8'
  sha256 '6e20ace03f983819217fcf68ac3a1d2e488adeceb535e31c4805828be1b112f7'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
