cask "grandtotal" do
  version "7.0.7"
  sha256 "25303fdfdddaeef0137af338576750f03383e385ed73407c3a40ffe7c6c493c4"

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
