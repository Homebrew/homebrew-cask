cask "opencode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.17.7"
  sha256 arm:   "aec61baf85b8983716f9b2e0718c143d6e7b562c03ae9e3030f9e28ccf4e91e7",
         intel: "708994ebb252e8f61efadf5edb09eb538f5933154a66a4651976bf5bd32de6be"

  url "https://github.com/anomalyco/opencode/releases/download/v#{version}/opencode-desktop-mac-#{arch}.dmg",
      verified: "github.com/anomalyco/opencode/"
  name "OpenCode"
  desc "AI coding agent desktop client"
  homepage "https://opencode.ai/"

  livecheck do
    url "https://github.com/anomalyco/opencode/releases/latest/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "OpenCode.app"

  zap trash: [
    "~/Library/Application Support/ai.opencode.desktop",
    "~/Library/Caches/ai.opencode.desktop",
    "~/Library/HTTPStorages/ai.opencode.desktop",
    "~/Library/Logs/ai.opencode.desktop",
    "~/Library/Preferences/ai.opencode.desktop.plist",
    "~/Library/Saved Application State/ai.opencode.desktop.savedState",
    "~/Library/WebKit/ai.opencode.desktop",
  ]
end
