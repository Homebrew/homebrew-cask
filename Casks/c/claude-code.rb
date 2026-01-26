cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.19"
  sha256 arm:          "d386ac8f6d1479f85d31f369421c824135c10249c32087017d05a5f428852c41",
         x86_64:       "be266b3a952f483d8358ad141e2afe661170386506f479ead992319e4fdc38ac",
         x86_64_linux: "4e2a1c73871ecf3b133376b57ded03333a7a6387f2d2a3a6279bb90a07f7a944",
         arm64_linux:  "8c4b61b24ca760d6f7aa2f19727163d122e9fd0c3ce91f106a21b6918a7b1bbb"

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
