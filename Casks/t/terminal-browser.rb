cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.6"
  sha256 arm:          "444ea4b42db342b6a271dce3017318e66559fc2b1bc29582a9b8166378b1e406",
         intel:        "6e658923a13a0ae7d77fdee5f1a8202ea554ae2d43c01394d32fcc52071adcb1",
         arm64_linux:  "c29f40fa30404e540367dc43b0a4bc7c4b68d70457c70c59b5d431544495bf42",
         x86_64_linux: "2dea4e7d01c576bd5b1c137cb233dcc425cffff737a26da0383bc56108733192"

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
