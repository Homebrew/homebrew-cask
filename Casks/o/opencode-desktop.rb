cask "opencode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.18.5"
  sha256 arm:   "4833ca920119cc339dae54f1116b0db016bf0b2f3d814dfc4cd0c0b81ca228cc",
         intel: "a16668e6d8524cddded2db7248cc8934925f156527e8db3ccadc223485df19e3"

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
