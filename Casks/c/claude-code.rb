cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.21"
  sha256 arm:          "e8265d8719f131ab8f2863e66ce69cc829c4f55387ae2286e45d4a06b802c6fd",
         x86_64:       "1824c9a01e0266bef1c0da880503e49db08823cf7eb6a54fef2a385028c2bb05",
         x86_64_linux: "35fcccfced2e8669dc4aacf2bb76fab9816bcc5fc566e66b5ae42f4e7b4474b1",
         arm64_linux:  "e043ed95e4df4282a9adb34eb51ee14d59a53f2feeeb19884a6b4edeccbe7f3a"

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
