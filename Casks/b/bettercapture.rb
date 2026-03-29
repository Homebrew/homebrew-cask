cask "bettercapture" do
  version "2026.3"
  sha256 "cbb59b9aaeb2d39581c8a3d28f5f63fdd24041bf226685185d3fd6d054eb247e"

  url "https://github.com/jsattler/BetterCapture/releases/download/v#{version}/BetterCapture-#{version}-arm64.dmg",
      verified: "github.com/jsattler/BetterCapture/"
  name "BetterCapture"
  desc "Screen recorder"
  homepage "https://bettercapture.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "BetterCapture.app"

  zap trash: [
    "~/Library/Application Support/BetterCapture",
    "~/Library/Caches/com.sattlerjoshua.BetterCapture",
    "~/Library/Preferences/com.sattlerjoshua.BetterCapture.plist",
  ]
end
