cask "grandtotal" do
  version "7.0.2.6"
  sha256 "73640a1861764e7d2ac89d6969f0dc32eca581589b85cb053c3c864c42db5753"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
