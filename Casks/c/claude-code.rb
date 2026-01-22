cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.16"
  sha256 arm:          "35dbcfaaec50eac1bf062b17a0ab97f3d72576bbcd0bb760fcfb9ad33f7ca413",
         x86_64:       "e7dad541637eef5b256f8ea5359d2986f16e61305f6276a99d037b1d4e923339",
         x86_64_linux: "d1748b4c5f5354ef61b8884bdc9bfeba11341b4cb23c1a498e8f885642c812ef",
         arm64_linux:  "bf1e06c69ebf77bf6d0f7d83d6e7d8d7a34b2b6c217aad2ee9bf4e10b1bc0c1c"

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
