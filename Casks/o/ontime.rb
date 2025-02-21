cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.12.0"
  sha256 arm:   "a48830f9a61a3eb5ffd9b06c34e08cd65da301e84482fddb47781069e2a2fc1b",
         intel: "97b0ca0cc16f6ebfe8a2b7ebb04136d772634827bc90e9ff852279d852312f70"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
