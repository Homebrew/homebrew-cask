cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.60"
  sha256 arm:          "a78789950d9b06eed7510f087d0912fa63ed2adc11c5633c5ee11f784d5a40b0",
         x86_64:       "df74e7058590068cedb145718a48f6c6027f75c801af7751af9627b94f412b28",
         x86_64_linux: "00ebf9712a737712714df64d08d143d8f28920ca436856539d4ea21c3d4904d5",
         arm64_linux:  "04db4761bcb94bc8b0b20c033c6d40efdf247346bd3d23f4f71ebbf99a5d2772"

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
