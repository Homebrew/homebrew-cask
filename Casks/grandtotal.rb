cask "grandtotal" do
  version "6.1.9"
  sha256 "c0e6638575e8288e02314c03fccfdaa041cc1128436ce2223d3631801842ead6"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
