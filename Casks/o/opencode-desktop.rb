cask "opencode-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.10"
  sha256 arm:   "e2f52497707bbaebe580e86caf1a5f01249251eaa4445cfe5e4d1a791845f584",
         intel: "2b4dbb6ebcf32040a09633b105662b36b83f1a814ed2881cef8bc23bfc954bc7"

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
