cask "grandtotal" do
  version "7.3.6"
  sha256 "ae9bd05e21a7528e050938c927e09500120e2a1b19da540504883ddcfb1b5d68"

  url "https://www.mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  name "GrandTotal"
  desc "Create invoices and estimates"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  livecheck do
    url "https://www.mediaatelier.com/GrandTotal#{version.major}/feed.php"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "GrandTotal.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.GrandTotal3",
    "~/Library/Preferences/com.mediaatelier.GrandTotal3.plist",
    "~/Library/Saved Application State/com.mediaatelier.GrandTotal3.savedState",
  ]
end
