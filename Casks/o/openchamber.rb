cask "openchamber" do
  arch arm: "arm64", intel: "x64"

  version "1.13.2"
  sha256 arm:   "796b44f74361d0962dac95f9f906acc1166f73c0e439fdd949935b19a4697887",
         intel: "d37b1aec8a834d4b8af6e4cdc23842795e893668dc74bcaf802b99013e8cff97"

  url "https://github.com/openchamber/openchamber/releases/download/v#{version}/OpenChamber-#{version}-mac-#{arch}.dmg",
      verified: "github.com/openchamber/openchamber/"
  name "OpenChamber"
  desc "Desktop and web interface for OpenCode AI agent"
  homepage "https://openchamber.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "OpenChamber.app"

  zap trash: [
    "~/.config/openchamber",
    "~/Library/Application Support/ai.opencode.openchamber",
    "~/Library/Caches/ai.opencode.openchamber",
    "~/Library/Logs/OpenChamber",
    "~/Library/Preferences/ai.opencode.openchamber.plist",
    "~/Library/Saved Application State/ai.opencode.openchamber.savedState",
    "~/Library/WebKit/ai.opencode.openchamber",
  ]
end
