cask 'grandtotal' do
  version '5.2.7'
  sha256 'be327403637a2d993aacacd3e4af48728831fba0bcc991c135090e66fc15b2cc'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
