cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.11.1"
  sha256 arm:          "9b21729e47bcc07e969913223705ce1ae5bcaa8e49094d6c9705c4cca8311d90",
         intel:        "9454b1467402049e0d08d07a69eb76b67e94f3c4c60ca2b8aadf4158c193c0f4",
         arm64_linux:  "ef34c68333c4352e5107d5bd6c5cf7fe840a05c9a48a37084b9fc65fc986385c",
         x86_64_linux: "b08327655aa3190260cf34807294be7c7c6685aa2639a393055b7c649eeb3a4a"

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
