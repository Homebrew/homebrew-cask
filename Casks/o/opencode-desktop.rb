cask "opencode-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.205"
  sha256 arm:   "d81ecb65ac5997cd67ec03875f84b53938e699ddaeceb32e30a8fe3e8af5fc26",
         intel: "764a3951dc9d6dcb11a13642b9ec91c20157125a3871e12105f719b57c39dee4"

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
