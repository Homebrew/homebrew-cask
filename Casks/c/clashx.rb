cask "clashx" do
  version "1.122.0"
  sha256 "dec7865d9f6cae9d060ee2cc1393125cabb1cc19414959bf62442e1f35e5ca28"

  url "https://github.com/ClashX-Pro/ClashX/releases/download/#{version}/ClashX.dmg",
      verified: "github.com/ClashX-Pro/ClashX/"
  name "ClashX"
  desc "Rule-based custom proxy with GUI based on Clash for macOS"
  homepage "https://clashx.tech/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "ClashX.app"

  zap trash: [
    "~/Library/Application Support/com.west2online.ClashX",
    "~/Library/Caches/com.west2online.ClashX",
    "~/Library/Preferences/com.west2online.ClashX.plist",
    "~/.config/clash",
  ]
end
