cask "grandtotal" do
  version "7.2.5"
  sha256 "3619d61c4426ab10e74555f26576b94c3c3cf74dc5fd59ca453c381d497f083e"

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
