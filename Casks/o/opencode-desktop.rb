cask "opencode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.17.13"
  sha256 arm:   "db8e9159ec9d8615d9cce0a72dca107b43d643a7fdc63664d4b5d28e6c8e7ed9",
         intel: "a78096342973eea298a51fa4c2f2688f74d6b4db9e1be5417f111058627f5cab"

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
