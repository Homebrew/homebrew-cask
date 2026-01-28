cask "opencode-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.38"
  sha256 arm:   "ce34b9e0a53c62c95109adb8a789daf075db7305e9c54d67ab13f9a25cfa2001",
         intel: "5e14544e30f55e9eebd926bec632787cbe81fbe171e8343bc8d61a624ddb4698"

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
