cask "grandtotal" do
  version "6.2.1"
  sha256 "9c8a864a8e4062b3934186719535bb8c01af4f2ec348632f2ffb28516ee1f09e"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
