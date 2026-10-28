cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.1"
  sha256 arm:          "1d63db26249ce074301c1b5d308c57dd322c6c0758adb41d00c632496d818526",
         intel:        "8c49a55e4cdb9b79d0ea68071c6119483194e3405fc68acd496079cd991c803f",
         arm64_linux:  "6ed94377367ba0923db922bdbefffe919d002fa21841fbfbb1b1025febaf364e",
         x86_64_linux: "138bf71c3d6f115025e8661b7ee2d036cf7c92ecb2f715e0b4c316539bcaa7eb"

  url "https://terminal-browser.sh/install/dl/stable/v#{version}/terminal-browser-#{os}-#{arch}.tar.gz"
  name "terminal-browser"
  desc "Terminal-based web browser"
  homepage "https://terminal-browser.com/"

  livecheck do
    url "https://terminal-browser.sh/install/latest.json"
    strategy :json do |json|
      json["version"]&.delete_prefix("v")
    end
  end

  binary "terminal-browser/bin/terminal-browser"

  zap trash: [
    "~/.agents/skills/terminal-browser",
    "~/.cache/terminal-browser-*",
    "~/.claude/skills/terminal-browser",
    "~/.codex/skills/terminal-browser",
    "~/.cursor/skills/terminal-browser",
    "~/.gemini/skills/terminal-browser",
    "~/.local/share/terminal-browser-*",
    "~/.local/state/terminal-browser",
    "~/.local/state/terminal-browser-*",
  ]
end
