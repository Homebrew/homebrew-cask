cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.2"
  sha256 arm:          "986250885e71260fb2f9de3d0b3cc3a3c5ecb63fd360e46cab2c48e1716fd3db",
         intel:        "37027af564db12487129161f66310df2fbf0d5bbdac4dd98af01ca40242d455f",
         arm64_linux:  "5db099c0c3037936f2b22cfa9f9a929367cc2754d96a631c2e91b886f67d0f2a",
         x86_64_linux: "9681a94db7ace106cce86bf14dcb3fcba7a404e5e660e70bf9ceb72ace36b146"

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
