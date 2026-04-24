cask "opencode-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "1.14.23"
  sha256 arm:   "a15d33cd5c24294d3f91a97d4814243d6d9e7582f504ca5a295c4f0edacf3809",
         intel: "0bb74f3f6c9e4001428d3b7269603de73250b3a9619339eac57c49301e2fc1aa"

  url "https://github.com/sst/opencode/releases/download/v#{version}/opencode-desktop-darwin-#{arch}.dmg",
      verified: "github.com/sst/opencode/"
  name "OpenCode"
  desc "AI coding agent desktop client"
  homepage "https://opencode.ai/"

  livecheck do
    url "https://github.com/sst/opencode/releases/latest/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

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
