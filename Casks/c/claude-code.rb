cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.17"
  sha256 arm:          "1d819a7c0ed1ad6275f42cf2b67041ab809afb1cd3537c6ed6e618b88e5a0531",
         x86_64:       "659ad8685603813d10adf7c68dfc3b05468cd1c78244d33bc065783fb36caa6a",
         x86_64_linux: "11a8bc2dece1cd7717a4c113883a573095511475545595d2b0e96f188d651e0f",
         arm64_linux:  "c21625c0f9627ba431c5be3573c4f8a0dee64b57e0d11220930c29de1028f829"

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
