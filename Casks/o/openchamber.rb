cask "openchamber" do
  arch arm: "arm64", intel: "x64"

  version "1.11.3"
  sha256 arm:   "67a70eb6507259b1c80280cd9b9d12b57552ca951b14849f3a42e18e08a0128b",
         intel: "ff3b032ba46b3763b3e1951fa1a1163a52c20f49defdf00f31e9142743846e3e"

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
