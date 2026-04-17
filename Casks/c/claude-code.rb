cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.98"
  sha256 arm:          "db75cb2c3f5c5ad24dc29af5145fea39ef58fed0faea0a4a099cd5afb291482b",
         x86_64:       "f8b60f354ee058efccd3368cdee647b18da7c80b8f3b72a99815827297d1c1b0",
         arm64_linux:  "67c0b9b7ed9c63f8524ecf5790805842f81d8322254dea849ecb8c7051f8df6b",
         x86_64_linux: "d40827b5aa8d737a7eb68e3aad990b80e2521540a6bc8a405259b63b25d42ed8"

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
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
