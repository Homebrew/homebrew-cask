cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.0"
  sha256 arm:          "68baffc7cc3b1a817d5744cb70655fbb3002ae0d985538f9dfaf0517788fa7a4",
         intel:        "4309aa1479b6c472c8e554cf07be16c9e164cdfda2b443597236a26b3c2f1653",
         arm64_linux:  "1474ff2c5654ef9a810b83edc514938163586f1e994333891fe109c81fa1e97f",
         x86_64_linux: "856a5fbe1f0daf769c87fe54c16453c2a5b873a4d384a988dc8b0abce405ba02"

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
