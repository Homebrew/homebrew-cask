cask "openchamber" do
  arch arm: "arm64", intel: "x64"

  version "1.11.6"
  sha256 arm:   "42633e4fa26af08fe424c612f420c67580c334a918472a61db02c21441f8580b",
         intel: "24c91df362b1a20ef093dc74f1c3a51324bfa8f42da62363fa291cb3cb42ea54"

  url "https://github.com/openchamber/openchamber/releases/download/v#{version}/OpenChamber-#{version}-#{arch}.dmg",
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
