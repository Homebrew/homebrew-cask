cask "grandtotal" do
  version "7.0.6"
  sha256 "27961bb23bbd839ee6f40cf9413a1af92e2dda5d4c6696f5c467835415ec2c77"

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
