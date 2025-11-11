cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.37"
  sha256 arm:          "640e6beb572a53ff9ea914d303d60f7b6d0273068db9ff27f48433a6e20ffbf9",
         x86_64:       "385196ea184d417c3295ee24608202bd94d73152b3e3efb2a0d7731e5cc28fbc",
         x86_64_linux: "48a8e2917f6bb84197a04c392915e7f8c02f19d0cde9b895a429221833a6f8b6",
         arm64_linux:  "8c4c17e726f03387e6bc69cb4316d721f3bc139a8ba54f037688ce9921e9edb8"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
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
