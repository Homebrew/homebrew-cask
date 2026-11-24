cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.16.0"
  sha256 arm:          "abf13f7cb6e28b2734d0ed95e7c046db243178cf38a04e0b5e9e78ab5929eee6",
         intel:        "bd22c7e446f7bf59d612e67dffcdee34a918e8bbaee85502a06c4ed70aafc94c",
         arm64_linux:  "5cc1a0fe2beae9099113ed96bda7e45b50b8cecc1fc433ad09651317204cf6f1",
         x86_64_linux: "10ea239f43e5a3faee091a8863c8e77c3a87ef79b4ea7df37bae8f55080bfb0f"

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
