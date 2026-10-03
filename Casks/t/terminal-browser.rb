cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.13.4"
  sha256 arm:          "f017230c78c60a07ef4451a1eb0a92727f0b955a8fcd87aec358910c5d0c03c7",
         intel:        "01bc6991bad122f42e4f2a5164a198d8384b944c036de112078fd51f58dc67ed",
         arm64_linux:  "0cf567d8218995a24fb6ce4b06c07ccf58a8c517906058087355f1e2fad1969f",
         x86_64_linux: "6277daaabab16711ab3f1961cdffad9efac5e70ac55d5076e2c86496d649d3a4"

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
