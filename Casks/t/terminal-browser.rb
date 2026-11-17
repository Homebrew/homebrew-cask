cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.5"
  sha256 arm:          "0a38baa5a1836696bb0731b059d264ad852e8ef11855d355686fe806667608ba",
         intel:        "2d531105e1545488d904311360887b712ac0e32747c9131d7774eb1dd3a19628",
         arm64_linux:  "856ffbeab17f85e4dadaa59d7715730427080fe019079012386062a25656dfa8",
         x86_64_linux: "8ec309df57a6d10d1d0bc5f6a820793d697a810c07801b3f339923e16a171cd4"

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
