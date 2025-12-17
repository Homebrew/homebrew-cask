cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.72"
  sha256 arm:          "57c9ebe132a5ed8aa934d1f728c6fe9b08dc4f9f6c44697d98d965158e9d8c48",
         x86_64:       "c0d847f44703c7cda9a76af90a6142d034885b15ab8accd2cb01acbdfb740772",
         x86_64_linux: "91521249ef601cc2e6a0f4432ce095acc99ecbb87cf29c2b5bf652e566503bb7",
         arm64_linux:  "44fc21f4670c77ae30b0705f79c9a572bf8516a4f8ca918f62320444ed360c4b"

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
