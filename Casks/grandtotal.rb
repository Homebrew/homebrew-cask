cask "grandtotal" do
  version "6.2"
  sha256 "042d743514ad94f3c933810cee8e2ce247771a4692fddf10d2bd28f0175b3cf3"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
