cask "grandtotal" do
  version "7.1.1"
  sha256 "68392637e9b6643d2aba18e2c15f8ea2f640c07c06aaa636ec27e65186b163d0"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  name "GrandTotal"
  desc "Create invoices and estimates"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  livecheck do
    url "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "GrandTotal.app"
end
