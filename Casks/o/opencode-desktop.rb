cask "opencode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.17.2"
  sha256 arm:   "c6c9286f06a7d1bf17ba3c8e7593ba55cb326199405c9cc4fe476cee04eeed54",
         intel: "6ca0cd1b0df7ea113b6c62e9cd35429cd38574bff0604b4bbadc4056e7c5c2f7"

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
