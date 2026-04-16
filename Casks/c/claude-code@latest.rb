cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.110"
  sha256 arm:          "f45cb1b0765f9fc592d36d7153f6c1ff0ecfc3ae9cbc997eaff2b0cd25bff9f6",
         x86_64:       "d4896277920c253c2bda5e0ae02a3e39486fa203603c2b25cc236533d68518fd",
         x86_64_linux: "7ecdde57b002d5927e704dcbce04eaafb923644d315259ba2e6ac6f0712163a4",
         arm64_linux:  "ff5bf0372d1700cfb4d232021c6e0d417205c16392492da0fabc6b509eeee92a"

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
