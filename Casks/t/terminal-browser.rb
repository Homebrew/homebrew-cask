cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.3"
  sha256 arm:          "11afbc1c0cc0b8d12bb5effc2e2baf08507dd32456d6e0052824c1bc30c108f0",
         intel:        "f91bb601f93b2959b76b24a6e4b765cab7ad35a885b97c07beaa1fd0773f6b05",
         arm64_linux:  "69f26a76bdcc61e4782733aa1b9fcb6e06774ac9d6b0df3e9fbb0aa4abb0f6bc",
         x86_64_linux: "244e995b554edb29f66cf07f7f830a76885ae6a6fa233dec53980bfb0a509541"

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
