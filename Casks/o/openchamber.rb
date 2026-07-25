cask "openchamber" do
  arch arm: "arm64", intel: "x64"

  version "1.16.3"
  sha256 arm:   "23a942f8d3ca6d66e68c1be530f6e135c072f26c3f5ab2bbb31d20d3b85f17db",
         intel: "8b2ed9cda91af4a9a19148e5341f2019b424bff87d7137923ae6d848ba288290"

  url "https://github.com/openchamber/openchamber/releases/download/v#{version}/OpenChamber-#{version}-mac-#{arch}.dmg",
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.openchamber.desktop.sfl*",
    "~/Library/Application Support/OpenChamber",
    "~/Library/Caches/ai.opencode.openchamber",
    "~/Library/Logs/OpenChamber",
    "~/Library/Preferences/ai.opencode.openchamber.plist",
    "~/Library/Preferences/dev.openchamber.desktop.plist",
    "~/Library/Saved Application State/ai.opencode.openchamber.savedState",
    "~/Library/WebKit/ai.opencode.openchamber",
  ]
end
