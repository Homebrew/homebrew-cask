cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.7"
  sha256 arm:          "cb2b6d0f24824929abf4996271d925be51842709ec20f3358360fa3c9258da84",
         intel:        "2270c617f7f5b55c5309561c65c1a2dc80eacf9dd123b848f866ca039542a0d4",
         arm64_linux:  "2fde6a7d924c21118a69feed70b500ab4937dc486414393360149b8c070890e1",
         x86_64_linux: "28e734ee89a500d6ff0b1fdaf55822368a16e268cb92155bbb0279b464d55076"

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
