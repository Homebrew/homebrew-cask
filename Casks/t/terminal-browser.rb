cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.16.2"
  sha256 arm:          "506de896300a78a972be8d344fd321a22daf2dd6d04bc9caacacb41eb6b807d7",
         intel:        "a3c61044a72cf4c9a7c70f717855c7da02df7242a18c1d096fa548f19a1c86ee",
         arm64_linux:  "08fb752ed81a0ea8dcc8c4fdbb93ae793ee9a940ed5d623a9c47f9520c68e995",
         x86_64_linux: "05c96e3ca1fd8c7f3bbb24c5235271355fe5f2b34ccfc20f6b473f1ec5f3bb17"

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
