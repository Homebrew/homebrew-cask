cask "grandtotal" do
  version "7.0.2"
  sha256 "9f1672edb01cad0b6ca349c93e81743bd1e1cfe33e74509c8634802e6f25110d"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
