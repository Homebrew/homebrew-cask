cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.13.1"
  sha256 arm:          "be44721273eed9b2bbb8ae0eaa6e44a489fc1fb9f252d738baebfa8d689238da",
         intel:        "d0e4f7e9e286369a17d7b11ee60d0e264649c1b184c73cd5486e61cbbb7cf11e",
         arm64_linux:  "a210f01056b0379f959d15dff82cda196a3e4284ec440afaa75ad4bed79c355c",
         x86_64_linux: "21e32a55212249e30fa3dfda1c3ede82b1bf6f82f93ef44eb63b1b625ea0d567"

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
