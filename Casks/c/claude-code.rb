cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.75"
  sha256 arm:          "a96eb18218e112486b7ecebd1551d927ffb310ab5fb06d2e8db25fb31367537e",
         x86_64:       "e27313053d3268a0bc1e0080f8c2ef7155325f0a95e72971163eef698a71e829",
         x86_64_linux: "62160f8766681d8c933e9133398d3dde6ad0df08038881a66eddb993b4b6a33f",
         arm64_linux:  "681fbd1a84b2de883dc954441693766b43ea4faafb3e72b88c99a33645cd3507"

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
