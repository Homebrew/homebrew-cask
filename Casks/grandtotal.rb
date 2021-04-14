cask "grandtotal" do
  version "7.0.5"
  sha256 "3d4f5a80afcc2d7f292c435ddb7a9683eb1440edd3595d7017a1a00d31ccba81"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  name "GrandTotal"
  desc "Create invoices and estimates"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  livecheck do
    url "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
    strategy :sparkle
  end

  app "GrandTotal.app"
end
