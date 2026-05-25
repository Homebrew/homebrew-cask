cask "openchamber" do
  arch arm: "arm64", intel: "x64"

  version "1.11.5"
  sha256 arm:   "bb3e107ff7744f40770d812d7218efb7f0a6ebf2075b83a8a5ab4d4647c9c2b7",
         intel: "f0b416aabaaf888616b79131a17b74f1ff3a6e5490e89c33d57b6a86a98feb84"

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
