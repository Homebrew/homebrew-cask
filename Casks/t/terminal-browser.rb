cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.16.3"
  sha256 arm:          "42e894a411f54ca9a55237f6c654c9c7a90f45966ff74d4d9b36ae0d608dbe87",
         intel:        "e867238ff3c4717ea129a2af996dfbbf8d2783bb593d72779b158feac68bfb24",
         arm64_linux:  "805201d715a6c684c8c1d5187d90639f077f8ffae68934e1197bcd0d13682037",
         x86_64_linux: "b66199f47ec18b00a47423cc8095dc06898eaed0c4f247a252cfce76388ea151"

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
