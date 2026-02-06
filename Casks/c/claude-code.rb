cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.34"
  sha256 arm:          "58bd74f33a9f0beb4338e02f613f63064fda73e9226288d10909df50a466ec60",
         x86_64:       "57e08c32782d0e3d1e38cf697261f85813a710d2719447a75770bdafdc4740c8",
         x86_64_linux: "3665f12f67a1159b31005dcce11ca1de41d49759bae3d01ed853940fe7c4a21f",
         arm64_linux:  "ffb0625ad609b5816cedfb23f88325f62b63747ab6fdfe5a53f352fd4ed77b33"

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
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
