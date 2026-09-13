cask "bettercapture" do
  version "2026.4"
  sha256 "6173b64653b0f2605c069f31e18e955ca9db2513ea10633b3a4d96763a9da7b1"

  url "https://github.com/jsattler/BetterCapture/releases/download/v#{version}/BetterCapture-#{version}-arm64.dmg"
  name "BetterCapture"
  desc "Screen recorder"
  homepage "https://bettercapture.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "BetterCapture.app"

  zap trash: [
    "~/Library/Application Support/BetterCapture",
    "~/Library/Caches/com.sattlerjoshua.BetterCapture",
    "~/Library/Preferences/com.sattlerjoshua.BetterCapture.plist",
  ]
end
