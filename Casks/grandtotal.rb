cask "grandtotal" do
  version "7.1.5"
  sha256 "68244d5f6d558a1daa14826a3dd50b9fa616b802e8417116f48b55be590d12fe"

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
