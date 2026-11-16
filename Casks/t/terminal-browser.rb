cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.4"
  sha256 arm:          "e9c560ac80d0a8865815f9acef72d29f80fc5f5d53bf86e7567808c234c168c9",
         intel:        "dd085a60c8c7d1cc8acd176b7bff76e12f67ba2160c1b1c6b8546ef9068a014b",
         arm64_linux:  "0a659603178afd2948e9ea4a934e208b2ecd81c651dda627d6d75f400f1d1e5e",
         x86_64_linux: "e9ebcfe1b4f6eace81d8983a81e82ed5cdf182f879f7ab8fa2a8c901374380db"

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
