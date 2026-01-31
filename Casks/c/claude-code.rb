cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.27"
  sha256 arm:          "457dc3958139a356eeff23711074c45d393fb3c82e868bb7a1565ab7a5786f0c",
         x86_64:       "cfc1ad5501ae9a2cb4b1b2e3755e5734b2f6b6114f671e527038d48327fb888c",
         x86_64_linux: "24df91dd250b6d7f6a0f8b256affab6c7a4bdefa64b1ece8aca3235d5f5e4044",
         arm64_linux:  "6166a8eeb82eba410b96030ab4b1330a27c28bdbdc4e313db45e5bfcc25d1e66"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "claude"

  zap trash: [
    "~/.cache/claude",
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]
end
