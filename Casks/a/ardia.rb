cask "ardia" do
  version "0.2.49"
  sha256 "a6b2ac66e4da66ecf7473adbed6bb00e01e4388f908e0e119d97c8a428a2badc"

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
