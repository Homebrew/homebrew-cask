cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.8.0"
  sha256 arm:          "9d61c334795f78e1e765c124ac8be43decd67c8667dae1da5329cca378e5e94e",
         intel:        "091cefab7e32347a41dfb02fb9508e89f6ef8a26fbd7b12642af71ca0bb4db13",
         arm64_linux:  "2c448f9bc043d0789defa9305f5bf84c59f2626e43158f2200c247412b3198df",
         x86_64_linux: "f7d56128c09ea4813f7cd374bb22009f0c0baf64169a170bcb70daa6363d3124"

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
