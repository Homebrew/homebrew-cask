cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.16.1"
  sha256 arm:          "7415324cac9182c672b25fd900673d68a6d99ced0718391a947962ca565e8614",
         intel:        "0b7e82fa57dcc6eff2ef753d372f1a52cc47b9035cf1c4713a14bfc601e75625",
         arm64_linux:  "8e6158cfe3161db168f77624ab6b3cfedf5ef807acfc49cac87e55596b204bd8",
         x86_64_linux: "f5179f6fa22dedc29ab35059c88705c815a8af463d310c6312f2bab971b57a58"

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
