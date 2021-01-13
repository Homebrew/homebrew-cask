cask "grandtotal" do
  version "7.0.2.10"
  sha256 "bcc8d9c51eb9cb041c447392f534c540357af39bc6d2cee1fb4d1bcce3c3bcad"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
