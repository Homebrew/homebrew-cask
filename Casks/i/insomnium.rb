cask "insomnium" do
  version "0.2.3-a"
  sha256 "3a561fa0d3413d23180d5488b0034a5bbcb2d433e4600e31d002e0ca2a52d9df"

  url "https://github.com/ArchGPT/insomnium/releases/download/core%40#{version}/Insomnium.Core-#{version}.signed.dmg"
  name "Insomnium"
  desc "HTTP and GraphQL Client"
  homepage "https://github.com/ArchGPT/insomnium"

  deprecate! date: "2024-07-28", because: :repo_archived

  depends_on macos: ">= :high_sierra"

  app "Insomnium.app"

  zap trash: [
    "~/Library/Application Support/Insomnium",
    "~/Library/Caches/com.insomnium.app",
    "~/Library/Caches/com.insomnium.app.ShipIt",
    "~/Library/Cookies/com.insomnium.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnium.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnium.app.helper.plist",
    "~/Library/Preferences/com.insomnium.app.plist",
    "~/Library/Saved Application State/com.insomnium.app.savedState",
  ]
end
