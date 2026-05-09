cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.138"
  sha256 arm:          "759d23ce626193c89bc8b35c5c6ca8a9e33b9c2e504ee143e4cd119988774097",
         x86_64:       "d99d3a7afd63841943906b11ed8791b0ee47fe5cf95601a8b805c20900014f54",
         x86_64_linux: "c3c56ffbc12cf16e40c33687c9fe6361ed250c35a9e1718d0c38d49049f5f8c3",
         arm64_linux:  "693ecca41a62d58fee660884bd982ca5cdeab5b277925fcdfe880cdf02f98671"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code"

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
