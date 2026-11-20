cask "ardia" do
  version "0.2.46"
  sha256 "55e0e5a88311a32ca6db8e8a838f77569e1a98d2bc5b83a918705f7179e4df7a"

  url "https://github.com/ardia-browser/ardia/releases/download/v#{version}/Ardia-#{version}.dmg"
  name "Ardia"
  desc "Chromium-based web browser with a vertical tab sidebar"
  homepage "https://ardia.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ardia.app"

  zap launchctl: "dev.ardia.hooks",
      trash:     [
        "~/.agents/skills/ardia",
        "~/.claude/skills/ardia",
        "~/.config/ardia",
        "~/.config/opencode/skills/ardia",
        "~/.cursor/skills/ardia",
        "~/.local/bin/ardia",
        "~/Library/Application Support/Ardia",
        "~/Library/Application Support/com.ardia.browser",
        "~/Library/Caches/com.ardia.browser",
        "~/Library/HTTPStorages/com.ardia.browser",
        "~/Library/HTTPStorages/com.ardia.browser.binarycookies",
        "~/Library/Logs/Ardia",
        "~/Library/Preferences/com.ardia.browser.plist",
        "~/Library/Saved Application State/com.ardia.browser.savedState",
        "~/Library/WebKit/com.ardia.browser",
      ]
end
